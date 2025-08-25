class BlogPost < BaseModel
  attr_accessor :id, :title, :body

  supports :update, :destroy
end


