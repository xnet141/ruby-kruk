require_relative 'request'

class Endpoint
  include Request

  def initialize(path, params)
    @path = path
    @params = params
  end

  # def do_get
  #   get prepare(@path), @params
  # end

  # def do_post
  #   post prepare(@path), @params
  # end

  # def do_put
  #   put prepare(@path), @params
  # end

  private

  METHOD_REGEXP = /\Ado_(get|post|put)\z/

  def method_missing(method, *_args)
    if method.to_s =~ METHOD_REGEXP
      send Regexp.last_match(1), prepare(@path), @params
    else
      super
    end
  end

  def prepare(path)
    path
  end
end