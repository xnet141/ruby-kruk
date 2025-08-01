RSpec.describe FunTranslations::Client do
  describe '#translate' do
    it 'translates as yoda' do
      text = 'Master Obi Wan lost a planet'
      data = {
        success: {total: 1},
        contents: {
          translated: 'A planet, master Obi Wan lost',
          text: text,
          translation: 'yoda'
        }
      }

      stub_request(
        :post,
        'https://api.funtranslations.com/translate/yoda.json'
      ).
        with(body: {text: text}).
        to_return(
          status: 200,
          body: JSON.dump(data)
        )

      translation = 
    end
  end
end