When(/^he fills login field with correct email$/) do
  @browser.iframe(:class, 'login_iframe').text_field(:placeholder , "Email *").set("ogboiko@gmail.com")
end

When(/^he fills password field with correct password/) do
  @browser.iframe(:class, 'login_iframe').text_field(:id, "dwfrm_login_password").set("ogboiko123")
end

When(/^user is redirected to Password recovery page$/) do
  @browser.element(:id, "account-passwordresetdialog-page").text
end

Then(/^he fill field with email$/) do
  @browser.text_field(:id, "dwfrm_requestpassword_email").set("ogboiko@gmail.com")
end

And(/^press on submit button$/) do
  @browser.button(:value,"Submit ").click
end

