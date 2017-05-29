When(/^user do mouseover on My account link form header$/) do
  browser.a(:class, 'account_navigation_link').click
end

 Then(/^he should see the Sign In pop-up$/) do
   @browser.element(:id, 'my_account_slot').present? == true
 end

 And(/^verify that Fb button is displayed$/) do
   @browser.element(:css,"#gigyaLoginContainerLogin_p0 > tbody > tr > td > table > tbody > tr > td > center > div[alt='Facebook'] > div").present? == true
 end

 And(/^verify that New customer section is displayed$/) do
   @browser.element(:class, "slot_header").text == 'NEW CUSTOMER?'.upcase
 end

 Then(/^press on Create an account button$/) do
   @browser.element(:link, "Create an account".upcase).click
 end

 And(/^Verify that Create My Account page is displayed$/) do
   @browser.element(:class, "account_section_heading").text == 'Create My Account'.upcase
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