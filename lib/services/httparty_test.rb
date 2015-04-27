require 'httparty'

module HTTPartyTest

  include HTTParty

  base_uri 'http://contactcentre.nightly.fco.clients.wtg.co.uk/users/login'

  def self.test_it
    response = HTTParty.get base_uri
    puts response
  end

end



World(HTTPartyTest)
