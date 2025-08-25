require_relative 'main'

post = BlogPost.create(title: "My Post", body: "Sample")

user = User.create(name: "John", surname: "Doe")

puts user.inspect

puts post.inspect

puts user.destroy

updated_post = post.update(title: "Updated Title", body: "new Body")

puts updated_post.inspect

# updated_post = BlogPost.update(id: post.id, title: "Updated Title", body: "new Body")

# result = User.destroy(id: user.id)

# puts updated_post.inspect

# puts result.inspect

