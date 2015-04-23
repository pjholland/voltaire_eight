require_relative "../../lib/base_class"

class Homepage < Baseclass

  include PageObject



  link(:map_link,                      :class      => 'map-link')
  link(:log_in_link,                   :id         => 'logout-link')
  link(:log_out_link,                  :text       => 'Logout')
  link(:admin_link,                    :link_text  => 'Admin')
  div(:admin_options_menu,             :class      => 'side-nav')
  select_list(:admin_options_menu,     :id         => 'selectEnquiryType')



end