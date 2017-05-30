When(/^user do mouseover on My account link form header$/) do
  sleep (4)
  @browser.element(:class, 'account_navigation_link').hover
  sleep (4)
end

 Then(/^he should see the Sign In pop-up$/) do
   Watir::Wait.until {@browser.element(:class, 'js_accountNavigation').visible?}
 end

 Then(/^press on Create an account button$/) do
   @browser.element(:class, 'button').click
 end

 And(/^Verify that Create My Account page is displayed$/) do
   @browser.element(:css, "h1").text == 'Create an Account'.upcase
 end


 And(/^Verify that Fb icon is displayed$/) do
   @browser.element(:css, "div[alt='Facebook'] > div > div").present? == true
 end

 Then(/^Fill greeting Mr or Mrs or Miss$/) do
   @browser.element(:xpath, ".//*[@id='RegistrationForm']/fieldset/div[1]/label[2]").click
 end

And(/^fill first name$/) do
  @browser.element(:id, "dwfrm_profile_customer_firstname").send_keys(@name1)
end

And(/^fill last name$/) do
  @browser.element(:id, "dwfrm_profile_customer_lastname").send_keys(@name2)
end

And(/^fill email$/) do
  @browser.element(:id, "dwfrm_profile_customer_email").send_keys(@email+'@gmail.com')
end

And(/^fill confirm email$/) do
  @browser.element(:id, "dwfrm_profile_customer_emailconfirm").send_keys(@email+'@gmail.com')
end

And(/^fill password$/) do
  @browser.element(:id, "dwfrm_profile_login_password").send_keys(@pass)
end

And(/^fill confirm password$/) do
  @browser.element(:id, "dwfrm_profile_login_passwordconfirm").send_keys(@pass)
end

Then(/^press on Create your account button$/) do
  @browser.element(:class, "submit_button").click
end

When(/^user is created he should see Welcome first and last name$/) do
  @browser.element(:class, "account_header_name").text == 'Welсome'.upcase + (@name1).upcase + ' ' + (@name2).upcase
end

And(/^verify that breadcrumbs are present:  Home My Account Personal Info & Subscriptions$/) do
  pending
end