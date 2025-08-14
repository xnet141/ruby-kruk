class Foo
  def foo
    puts 'hello from foo'
  end
end

FOO = Foo.new # FOO константа, с соответствующей областью видимости

def test
  if FOO.respond_to?(:foo)
    FOO.foo
  else
    puts 'fast ruby'
  end
end

test

NUM = 1.12678.freeze

def fast
  puts NUM.round(2).to_s
end 

def avg
  puts format('%.2f', NUM)
end

def slow
  puts ('%.2f' % NUM)
end

fast
avg
slow

ROLES = %i[superadmin admin]
USERS = [
  {
    name: "John",
    role: :admin
  },
  {
    name: "Cathie",
    role: "user"
  }
]

def fast
  USERS.select do |user|
    puts ROLES.include?(user[:role])
  end
  puts 'fast!!!!'
end

fast

