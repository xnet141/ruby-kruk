module FunTranslations
  module Connection
    BASE_URL = 'https://api.funtranslations.com'

    def connection
      Faraday.new(options) do |faraday|
        faraday.adapter Faraday.default_adapter # чаще всего используют дефолтный адаптер
        faraday.request :url_encoded
      end
    end

    private

    def options # передадим как аргумент в Faraday.new(options) (загаловки headers и BASE_URL) Faraday передаст заголовки и обратиться к нужному URL
      headers = {
        accept: 'application/json', # по научному json прописывают так - 'application/json'
        'Content-Type' => 'application/x-www-form-urlencoded',
        user_agent: "fun_translations gem/#{FunTranslations::VERSION}"
      }

      {   # этот хеш вернет метод option как результат работы
        headers: headers,
        url: BASE_URL
      }
    end
  end
end
