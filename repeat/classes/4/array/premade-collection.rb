require 'benchmark/ips'

ROLES = %i[superadmin admin]
USERS = [
  {
    name: "John",
    role: "admin"
  },
  {
    name: "Cathie",
    role: "user"
  }
]

def fast
  USERS.select do |user|
    ROLES.include?(user[:role])
  end
end

def slow
  USERS.select do |user|
    %i[superadmin admin].include?(user[:role]) # на каждой итерации мы делаем этот массив, это медленнее
  end
end

Benchmark.ips do |x|
  x.report('pre-made') { fast }
  x.report('re-generated') { slow }
  x.compare!
end