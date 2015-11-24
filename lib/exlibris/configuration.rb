require 'exlibris/base'

module ExLibris
  class Configuration < ExLibris::Base
    attr_accessor :base_uri, :default_api_key
  end
end
