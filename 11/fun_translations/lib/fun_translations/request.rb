module FunTranslations
  module Request
    include FunTranslations::Connection

    def post(path, params = {})
      # path --> translate/yoda.json
      # params = { text: "Hello my padawan" }
      connection.post(path, params)
      # "text=Hello my padawan" --> при запросе Faraday конвертирует в нужную форму
    end
  end
end
