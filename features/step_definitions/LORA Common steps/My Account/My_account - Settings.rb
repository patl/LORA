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


When(/^Add new address pop\-up is displayed$/) do
  @browser.element(:class,'account_address_detail_page').wait_until_present
end

Then(/^he fills Address name$/) do
  @browser.text_field(:id, "dwfrm_profile_address_addressid").set(@address_name)
end

And(/^he fills first name for address$/) do
  @browser.text_field(:id, "dwfrm_profile_address_firstname").set("First name")
end

And(/^he fills last name for address$/) do
  @browser.text_field(:id, "dwfrm_profile_address_lastname").set("Last name")
end

And(/^he fills street address for address$/) do
  @browser.text_field(:id, "dwfrm_profile_address_address1").set("Street address")
end

And(/^he fills Phone number for address$/) do
  @browser.text_field(:id, "dwfrm_profile_address_phone").set("0789654123")
end

And(/^he fills ZIP code for address$/) do
  @browser.text_field(:id, "dwfrm_profile_address_zip").set("12345")
end

And(/^he selects State for address$/) do
  @browser.element(:id, 'dwfrm_profile_address_states_stateSelectBoxItText').click
  @browser.element(:link_text, 'Alaska').click
end

And(/^he select country for address$/) do
  @browser.element(:id, 'dwfrm_profile_address_countrySelectBoxItText').click
  @browser.element(:link_text, 'United States').click
end

And(/^he fills city for address$/) do
  @browser.text_field(:id, "dwfrm_profile_address_city").set("City")
end

Then(/^he press on Save address button$/) do
  @browser.button(:name,"dwfrm_profile_address_create").click
end

Then(/^verify that address is saved$/) do
  @browser.element(:class, 'address_item').present?
end

And(/^check address Nickname is correct$/) do
  @browser.element(:class, 'mini_address_title').text.include?(@address_name)
end