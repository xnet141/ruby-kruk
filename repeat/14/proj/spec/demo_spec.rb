require_relative '../demo'
#rspec . # => запуск из ком строки
#rspec . --format doc

# describe - содержит в себе набор тестов (в блоках it, specify)
RSpec.describe Demo do # в блок describe передана ссылка на класс demo.
  # #my_method -- instance (метод образца класса)
  # .my_method -- class method
  specify '.run' do
    # puts "My class is #{described_class.inspect}" # described_class работает, если мы его указали выше
    # вот тут мы записываем сам тест!
    result = described_class.run
    expect(result).to eq(42)
  end
end