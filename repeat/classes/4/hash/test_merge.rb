env = { "api_key" => 123 }

def setup_env(key, hash)
  puts hash
  puts hash.object_id
  # new_config = Hash.new # эта строка для проверки object_id для each- не нужна в случае merge
  # puts new_config.object_id 
  # hash.each do |key, value| 
  #   new_config[key] = value # заново создаем новый хеш, чтоб оригинальный не мутировал
  # end
  new_config = {}.merge(hash)
  new_config.fetch(key) { yield(new_config, key) } # merge позволяет избавиться от мутирования оригинального хэша env
  puts new_config
  puts new_config.object_id
  new_config
end

puts setup_env("host", env) { |env, key|  env[key] = 'localhost' }

puts setup_env("api_key", env) { |env, key|  env[key] = 'localhost' }
