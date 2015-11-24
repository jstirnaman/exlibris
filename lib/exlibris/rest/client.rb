require 'exlibris/client'
require 'exlibris/rest/api'

module ExLibris
  module REST
    class Client < ExLibris::Client
      include ExLibris::REST::API
      include HTTParty

      default_timeout 1 # hard timeout after 1 second

      attr_accessor :api_key, :base_uri

      def initialize(api_key: nil, base_uri: nil)
        @api_key = api_key
        self.class.base_uri(base_uri)
        yield(self) if block_given?
#        @alma_params = { query: {
#                           apikey: apikey || set_api_key(name: apikey_name)
#                           } }
      end

      def handle_timeouts
        yield
      rescue Net::OpenTimeout, Net::ReadTimeout
        {}
      end
    end
  end
end
