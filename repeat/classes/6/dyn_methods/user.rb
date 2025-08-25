class User < BaseModel
  attr_accessor :id, :name, :surname

  supports :destroy
end



