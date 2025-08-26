require_relative 'request'

class BaseModel
  extend Request

  def initialize(params)
    params.each do |k, v|
      self.instance_variable_set "@#{k}", v # instance_variable_set - позволяет установить значение переменной экземпляра (переменной объекта). Имена таких переменных всегда имеют префикс @. Также
    end                                     # instance_variable_set позволяет принять название переменной в виде "@#{k}", простое присваивание "@#{k}" = v работать не будет
  end

  class << self
    def supports(*methods)
      methods.each do |method|
        define_method method do |params = {}|
          self.class.send method, params.merge(id: self.id)
        end
      end
    end

    def create(params)
      self.new post(params) # self не обязателен, просто это указывает, что new будет вызван на конкретном классе
    end                     # new создаст образец класса BaseModel

    def update(params)
      new patch(params.delete(:id), params)
    end

    def destroy(params)
      delete(params[:id])
    end
  end
end