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
      #raw_response.status
      # HTTP 2xx
      # 3xx
      # 404
      # 500
      # raw_response.success?
      body = raw_response.body.empty? ?
         raw_response.body : 
         JSON.parse(raw_response.body)

      respond_with_error(raw_response.status, body) if !raw_response.success?
      body['contents']
    end

    def respond_with_error(code, body)
      # ...
    end
  end
end