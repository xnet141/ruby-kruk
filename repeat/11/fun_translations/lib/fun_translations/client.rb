module FunTranslations
  class Client
    include FunTranslations::Request

    def initialize
    end

    # endpoint = :yoda, :pirate, :quenya
    def translate(endpoint, text)
      FunTranslations::Translation.new(
        post("/translate/#{endpoint}.json", { text: text })
      )  
    end
  end
end