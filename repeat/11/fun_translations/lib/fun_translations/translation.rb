module FunTranslations
  class Translation
    attr_reader :translated_text, :original_text, :translation
  
    def initialize(raw_translation)
      @translated_text = raw_translation['translated']
      @original_text = raw_translation['text']
      @translation = raw_translation['translation']
    end
  end
end