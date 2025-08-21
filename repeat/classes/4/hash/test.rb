env = { api_key: 123 }
@env_new = env

def setup_env key, hash
  if hash[key] 
    return hash
  end
  
  @env_new.fetch(key) { yield(@env_new, key) } 
  @env_new
end

puts env
puts setup_env(:host, env) { |env, key|  env[key] = 'localhost' }
puts env
puts setup_env(:api_key, env) { |env, key|  env[key] = 'localhost' }
puts env
puts @env_new