require_relative "../../lib/base_class"

class Login    < Baseclass

  include PageObject


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
  self.user_email = 'hub_admin@fco.dev'
  self.user_password = 'n74J994e8784F27m74244Cq6243xJu'
  login
end

end