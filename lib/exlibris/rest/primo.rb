require 'exlibris/rest/primo/pnx'
require 'exlibris/rest/primo/eshelf'

module ExLibris
  module REST
    module Primo
      include ExLibris::REST::Primo::Eshelf
      include ExLibris::REST::Primo::PNX
    end
  end
end
