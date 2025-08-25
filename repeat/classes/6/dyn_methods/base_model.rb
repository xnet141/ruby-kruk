class BaseModel
  class << self
    def create(params)
      new post(params)
    end
  end
end