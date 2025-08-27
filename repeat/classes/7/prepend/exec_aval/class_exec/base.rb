class Base
  class << self
    def inherited(subclass)
      attrs = attributes_for subclass
      subclass.class_exec do
        attr_reader(*attrs) # Оператор звёздочка (*) в контексте attr_reader используется для распаковки массива аргументов и позволяет передать несколько переменных одновременно
      end
      super
    end

    private

    def attributes_for(klass)
      @methods ||= Oj.load File.read('./methods.json')
      @methods[klass.to_s.downcase]
    end
  end
end