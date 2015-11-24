require 'httparty'

module ExLibris
  class Client
    attr_accessor :api_key

    def initialize(api_key: nil)
      @api_key = api_key
      yield(self) if block_given?
    end

  end
end
