When(/^user is redirected to Password recovery page$/) do
  @browser.element(:id, "account-passwordresetdialog-page").text
end

Then(/^he fill field with email$/) do
  @browser.text_field(:id, "dwfrm_requestpassword_email").set("ogboiko@gmail.com")
end

And(/^press on submit button$/) do
  @browser.button(:name,"dwfrm_requestpassword_send").click
end


When(/^user is logged in he can see his name in pop-up$/) do
  @browser.element(:class, "container_accountNavigation").text == "Welcome"
end

When(/^he fills login field with (.*)$/) do |userlogin|
  @browser.iframe(:class, 'login_iframe').text_field(:placeholder , "Email *").set(userlogin)

end

When(/^he fills password field with (.*)$/) do |userpassword|
  @browser.iframe(:class, 'login_iframe').text_field(:id, "dwfrm_login_password").set(userpassword)

end