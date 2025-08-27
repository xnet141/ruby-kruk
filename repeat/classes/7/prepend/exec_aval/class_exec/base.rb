class Base
  class << self
    def inherited(subclass)
      attrs = attributes_for subclass
      puts attrs.inspect
      subclass.class_exec do
        puts attrs.inspect
        attr_reader(*attrs)
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