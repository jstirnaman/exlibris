#require Rails.root.join('lib/alma/alma') #'exlibris/rest/alma'
require 'exlibris/rest/primo'

module ExLibris
  module REST
    module API
#      include ExLibris::REST::Alma
      include ExLibris::REST::Primo
    end
  end
end
