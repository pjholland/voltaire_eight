
Given(/^I log on to the contact centre homepage$/) do
  Login.new(@browser, site)
  @site.login.visit
  #@site.login.user_email = "hub_admin@fco.dev"
  #@site.login.user_password = "n74J994e8784F27m74244Cq6243xJu"
  #@site.login.login
  @site.login.log_in_as_registered_user
end