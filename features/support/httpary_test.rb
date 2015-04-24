require 'httparty'

class HTTPARTYTEST

  include HTTParty

  base_uri 'http://contactcentre.nightly.fco.clients.wtg.co.uk/users/login'


  def testit
    response = HTTParty.get base_uri
    puts response
  end

end

