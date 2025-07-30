require_relative '../demo'
#rspec . # => запуск из ком строки
#rspec . --format doc

# describe - содержит в себе набор тестов (в блоках it, specify)
RSpec.describe Demo do
  it 'self.run' do
    # вот тут мы записываем сам тест!
    result = Demo.run
    expect(result).to eq(42)
  end
end