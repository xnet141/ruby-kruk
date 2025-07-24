module FunTranslations
  module Request
    include FunTranslations::Connection

    def post(path, params = {})
      # path --> translate/yoda.json
      # params = { text: "Hello my padawan!" }
      # connection.post(path, params)  => строка , которая похожа на хэш
      respond_with(
        connection.post(path, params) 
      )  
    end

    private
# Faraday вернет на запрос connection.post спец объект, который отвечает на метод body
    def respond_with(raw_response) 
      body = raw_response.body.empty? ?
         raw_response.body : 
         JSON.parse(raw_response.body)

      body['contents']
    end
  end
end