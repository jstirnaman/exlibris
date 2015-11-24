require 'spec_helper'

describe ExLibris::Client do
  describe 'api_key' do
    it 'is set to configured value' do
      client = ExLibris::REST::Client.new { |c| c.api_key = '123456' }
      expect(client.api_key).to eq '123456'
    end
  end
end
