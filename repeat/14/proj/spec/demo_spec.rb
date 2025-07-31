require_relative '../demo'
#rspec . # => запуск из ком строки
#rspec . --format doc

# describe - содержит в себе набор тестов (в блоках it, specify)
RSpec.describe Demo do # в блок describe передана ссылка на класс demo.
  specify '#my_arr' do
    # puts obj.val
    obj = described_class.new
    expect(obj.my_arr).to include(2)
    # obj.val = 1
  end

  specify '#calc' do
    obj = described_class.new
    expect(obj.calc(2, 3)).to eq(6)
    expect(obj).to be_an_instance_of(described_class) # be_an_instance_of проверяет является ли obj образцом класса
  end
  # #my_method -- instance (метод образца класса)
  # .my_method -- class method
  specify '.run' do
    # puts "My class is #{described_class.inspect}" # described_class работает, если мы его указали выше
    # вот тут мы записываем сам тест!
    result = described_class.run
    expect(result).to eq(42)
  end
end