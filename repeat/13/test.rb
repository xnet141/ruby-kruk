module FunTranslations
  # StandardError
  # - Error
  # -- ClientError
  # --- BadRequest
  # -- ServerError
  # --- NotImplemented
  # --- BadGateway
  class Error < StandardError
    ClientError = Class.new(self)
    ServerError = Class.new(self)

    BadRequest = Class.new(ClientError)
    Unauthorized = Class.new(ClientError)
    NotAcceptable = Class.new(ClientError)
    NotFound = Class.new(ClientError)
    Conflict = Class.new(ClientError)
    TooManyRequests = Class.new(ClientError)
    Forbidden = Class.new(ClientError)
    Locked = Class.new(ClientError)
    MethodNotAllowed = Class.new(ClientError)

    NotImplemented = Class.new(ServerError)
    BadGateway = Class.new(ServerError)
    ServiceUnavailable = Class.new(ServerError)
    GatewayTimeout = Class.new(ServerError)

    ERRORS = {
      400 => FunTranslations::Error::BadRequest,
      401 => FunTranslations::Error::Unauthorized,
      403 => FunTranslations::Error::Forbidden,
      404 => FunTranslations::Error::NotFound,
      405 => FunTranslations::Error::MethodNotAllowed,
      406 => FunTranslations::Error::NotAcceptable,
      409 => FunTranslations::Error::Conflict,
      423 => FunTranslations::Error::Locked,
      429 => FunTranslations::Error::TooManyRequests,
      500 => FunTranslations::Error::ServerError,
      502 => FunTranslations::Error::BadGateway,
      503 => FunTranslations::Error::ServiceUnavailable,
      504 => FunTranslations::Error::GatewayTimeout
    }.freeze

    def self.from_response(body)
      msg = body
      new msg.to_s
    end
  end
end

class Bost
  def self.from_new
    raise new('fsdfsd'), 'удалить это'
  end
end

begin
  Bost.from_new
rescue => e
  puts e.class.name
  puts e.message
end


class One < FunTranslations::Error
  TEST = 'Test'

  def self.from_one
    raise new('message_super!!!'), 'ffffffffffffffff' # => raise может принять 2-ой аргумент и передать вместо первого
  end  
end



puts One.new 'innnnn'

puts 'I am last'

# puts One.from_one.inspect
# puts One.from_one.message.inspect #у экземпляра One есть сущность message!!!

begin
  One.from_one
rescue => e
  puts e.class.name
  puts e.message # вместо аргумента метода new (message_super!!!), передался второй аргумент raise 'ffffffffffffffff'
end

