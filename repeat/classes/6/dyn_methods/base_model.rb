require_relative 'request'

class BaseModel
  extend Request

  def initialize(params)
    params.each do |k, v|
      self.instance_variable_set "@#{k}", v # проверить без self
    end
  end

  class << self
    def create(params)
      self.new post(params) # self не обязателен, просто это подчеркивает, что new будет вызван на конкретном классе, который наследует BaseModel
    end                     # new создаст образец класса на потомке BaseModel
  end
end