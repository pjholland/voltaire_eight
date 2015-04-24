
Given(/^I log on to contact centre homepage$/) do
  Login.new(@browser, site)
  @site.login.visit
  @site.login.log_in_as_registered_user
end