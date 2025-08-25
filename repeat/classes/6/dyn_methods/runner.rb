require_relative 'main'

post = BlogPost.create(title: "My Post", body: "Sample")

user = User.create(name: "John", surname: "Doe")

puts user.inspect

puts post.inspect

