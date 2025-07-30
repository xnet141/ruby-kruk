module FunTranslations
  module Connection
    BASE_URL = 'https://api.funtranslations.com'

    def connection(client)
      Faraday.new(options(client)) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.request :url_encoded
      end
    end

    private

    def options(client)
      headers = {
        accept: 'application/json', # в каком формате данные желаем получать
        'Content-Type' => 'application/x-www-form-urlencoded', # в каком формате данные будем отправлять
        user_agent: "fun_translations gem/#{FunTranslations::VERSION}" # идентификационная строка клиентского приложения;
      }

      headers['X-Funtranslations-Api-Secret'] = client.token unless client.token.nil?

      {
        headers: headers,
        url: BASE_URL
      }
    end
  end
end