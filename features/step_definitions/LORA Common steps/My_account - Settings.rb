And(/^press on Logout$/) do
  Watir::Wait.until {@browser.element(:class, 'logout_link').visible?}
  @browser.element(:class, 'logout_link').click
end

When(/^he fills password field with new password$/) do
  @browser.iframe(:class, 'login_iframe').element(:id, "dwfrm_login_password").send_keys(@pass)
end

And(/^fill confirm email for test user$/) do
  @browser.element(:id, "dwfrm_profile_customer_emailconfirm").send_keys('ogboiko@gmail.com')
end

And(/^fill password for test user$/) do
  @browser.element(:id, "dwfrm_profile_login_password").to_subtype.clear
  @browser.element(:id, "dwfrm_profile_login_password").send_keys('ogboiko123')

end

And(/^fill confirm password for test user$/) do
  @browser.element(:id, "dwfrm_profile_login_passwordconfirm").to_subtype.clear
  @browser.element(:id, "dwfrm_profile_login_passwordconfirm").send_keys('ogboiko123')

end


Then(/^press on update button from my account page$/) do
  @browser.element(:name, "dwfrm_profile_confirm").click
end