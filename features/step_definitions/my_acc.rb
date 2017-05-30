When(/^user do mouseover on My account link form header$/) do
  sleep (4)
  @browser.element(:class, 'account_navigation_link').hover
  sleep (4)
end

 Then(/^he should see the Sign In pop-up$/) do
   Watir::Wait.until {@browser.element(:class, 'js_accountNavigation').visible?}
 end

 Then(/^press on Create an account button$/) do
   @browser.iframe(:class, 'login_iframe').link(:text, 'Create').click
 end

 And(/^Verify that Create My Account page is displayed$/) do
   @browser.element(:css, "h1").text == 'Create an Account'.upcase
 end


 And(/^Verify that Fb icon is displayed$/) do
   @browser.a(:class, "fb_button").present? == true
 end

 Then(/^Fill greeting Mr or Mrs or Miss$/) do
   @browser.label(:text, "Ms./Mrs.").click
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
  @browser.span(:class, "account_user_name").inner_html == 'Welcome'
end

And(/^fill birthday$/) do
  #fill date
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_daySelectBoxItText').click
  @browser.element(:link, "02").click
  #fill mm
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_monthSelectBoxItText').click
  @browser.element(:link, "03").click
  #fill yy
  @browser.element(:id, 'dwfrm_profile_customer_birthdayfields_yearSelectBoxItText').click
  @browser.element(:link, "2010").click
end

And(/^fill Phone number$/) do
  @browser.element(:id, 'dwfrm_profile_customer_phone').send_keys('0623123123')
end

Then(/^he press on Connection button$/) do
  @browser.iframe(:class, 'login_iframe').div(:text, 'Connection').click
end

And(/^Verify validation message for login field$/) do
  @browser.iframe(:class, 'login_iframe').span(:class , "error_message").text == "Please enter your email address"
end

And(/^verify validation message for password field$/) do
  @browser.iframe(:class, 'login_iframe').element(:xpath , "//form[@id='dwfrm_login']/fieldset/div[2]/span").text == "Please enter your password"
end

When(/^he fill login field with correct email$/) do
  @browser.iframe(:class, 'login_iframe').text_field(:placeholder , "Email *").set("ogboiko@gmail.com")
end

When(/^he filles password field with correct fiel$/) do
  @browser.iframe(:class, 'login_iframe').text_field(:id, "dwfrm_login_password").set("ogboiko123")
end

Then(/^he press on forgor your password link$/) do
  @browser.iframe(:class, 'login_iframe').a(:class, "password_reset").click
end

When(/^user is redirected to Password recovery page$/) do
  @browser.element(:id, "account-passwordresetdialog-page").text
end