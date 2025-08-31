require_relative 'request'

class Endpoint
  include Request

  def initialize(path, params)
    @path = path
    @params = params
  end

  def do_get
    get prepare(@path), @params
  end

  def do_post
    post prepare(@path), @params
  end

  def do_put
    put prepare(@path), @params
  end

  private

  

  def prepare(path)
    path
  end
end