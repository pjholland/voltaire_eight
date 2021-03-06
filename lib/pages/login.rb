require_relative "../../lib/base_class"
require_relative "../../lib/services/httparty_test"

class Login    < Baseclass

  include PageObject, HTTParty



  text_field(:user_email,              :id         => 'UserEmail')
  text_field(:user_password,           :id         => 'UserPassword')
  button(:login,                       :class      => 'btn-primary')
  link(:map_link,                      :class      => 'map-link')
  link(:log_in_link,                   :id         => 'logout-link')
  link(:log_out_link,                  :text       => 'Logout')
  link(:admin_link,                    :link_text  => 'Admin')
  div(:admin_options_menu,             :class      => 'side-nav')
  select_list(:admin_options_menu,     :id         => 'selectEnquiryType')


def  log_in_as_registered_user
  self.user_email = USERS['NIGHTLY_EMAIL']
  self.user_password = USERS['NIGHTLY_PASSWORD']
  login
  HTTPartyTest::test_it
end

end