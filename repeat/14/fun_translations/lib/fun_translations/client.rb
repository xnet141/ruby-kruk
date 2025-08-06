module FunTranslations
  class Client
    include FunTranslations::Request

    attr_accessor :token

    def initialize(token = nil) # token = nil, если нет токена
      @token = token
    end

    # endpoint = :yoda, :pirate, :quenya
    def translate(endpoint, text, params = {})
      FunTranslations::Translation.new(
        post(
          "/translate/#{endpoint}.json",
          self, # передаем текущий объект, self это ссылка на текущий объект (образец класса Client)
          {text: text}.merge(params)
        )
      )
    end
  end
end
