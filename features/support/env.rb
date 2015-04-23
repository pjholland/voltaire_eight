$: << File.dirname(__FILE__)+'/../lib'

require "selenium-webdriver"
require "rspec"
require "cucumber"
require "require_all"
require 'page-object'
require_rel '../../lib/pages'

#ENV['base_url'] = 'http://contactcentre.nightly.fco.clients.wtg.co.uk/users/login'

ENV['base_url'] = 'https://uat.contactcentre.hub.fco.gov.uk/users/login'


After do
  at_exit { @browser.quit }
end
