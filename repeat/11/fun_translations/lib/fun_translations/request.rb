module FunTranslations
  module Request
    include FunTranslations::Connection

    def post(path, params = {})
      # path --> translate/yoda.json
      # params = { text: "Hello my padawan!" }
      respond_with(
        connection.post(path, params) # => строка , которая похожа на хэш
      )  
    end

    private

    def respond_with(raw_response) # Faraday вернет на запрос connection.post спец объект, который отвечает на метод body
      body = raw_response.body.empty? ?
         raw_response.body : JSON.parse(raw_respose.body)


    end
  end
end