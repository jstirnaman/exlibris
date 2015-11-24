describe ExLibris::Primo, :vcr do
  before do
    Primo.configure do |config|
      config.default_api_key = ENV['ALMA_APIKEY']
    end
  end

  describe 'configure' do
    before do
    end

   after do
     Primo.reset
   end
  end
end
