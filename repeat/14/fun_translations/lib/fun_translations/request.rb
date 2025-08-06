module FunTranslations
  module Request
    include FunTranslations::Connection

    def post(path, client, params = {})
      # path --> translate/yoda.json
      # params = { text: "Hello my padawan!" }
      # connection.post(path, params)  => строка , которая похожа на хэш
      respond_with(
        connection(client).post(path, params)
      )
    end

    private

    # Faraday вернет на запрос connection.post спец объект, который отвечает на метод body
    def respond_with(raw_response)
      # raw_response.status
      # HTTP 2xx
      # 3xx
      # 404
      # 500
      # raw_response.success?
      body = if raw_response.body.empty?
               raw_response.body
             else
               JSON.parse(raw_response.body)
             end

      respond_with_error(raw_response.status, body['error']) unless raw_response.success?
      body['contents']
    end

    # code - это код состояния HTTP (404, 500, 429)
    def respond_with_error(code, body)
      puts body.inspect
      puts '==========='
      raise(FunTranslations::Error.from_response(body)) unless FunTranslations::Error::ERRORS.key?(code)

      raise FunTranslations::Error::ERRORS[code].from_response(body)
    end
  end
end
