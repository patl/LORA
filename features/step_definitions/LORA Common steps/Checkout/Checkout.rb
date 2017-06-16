Then(/^user press on Secure Checkout  button from cart  page$/) do
  @browser.element(:class, 'cart_actions_bottom').element(:name, 'dwfrm_cart_checkoutCart').click
end


When(/^step:1 Checkout  method is displayed$/) do
  @browser.element(:class, 'chmodule_signin').present? == true
end


And(/^user fills email field with (.*)  on checkout  step:1$/) do |email|
  @browser.element(:id, 'form_emailonly').text_field(:class, 'class.form.input.field').set(email)
end

Then(/^press on Proceed to checkout button on checkout  step:1$/) do
  @browser.element(:id, 'form_emailonly').element(:name, 'dwfrm_login_unregistered').click
end

When(/^step:2 Select your samples is displayed$/) do
  @browser.element(:id, 'form_samples').wait_until_present
  @browser.element(:id, 'form_samples').present? == true
end

Then(/^press on Continue to \.\. button from checkout for step:2\/3\/4$/) do
  @browser.element(:class, 'section_submit_action').element(:name, 'dwfrm_checkout_sectionNext').click
end

When(/^step:3 Contact details is displayed$/) do
  @browser.element(:id, 'shippingaddressinfo').visible? == true
end

Then(/^user fills firts name field with (.*)$/) do |firstName|
  @browser.text_field(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_firstName').set(firstName)
@first_name = @browser.text_field(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_firstName').text
end

And(/^user fills Last name field with (.*)$/) do |lastName|
  @browser.text_field(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_lastName').set(lastName)
  @last_name =   @browser.text_field(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_lastName').text
end

And(/^user fills street number field with (.*)$/) do |streetNumber|
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_streetNumber").set(streetNumber)
  @str_num = @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_streetNumber").text
end

And(/^user fills address name field with (.*)$/) do |addressName|
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_address1").set(addressName)
  @address_name =   @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_address1").text
end

And(/^user fills city field with (.*)$/) do |city|
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_city").set(city)
  @city =   @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_city").text
end

And(/^user fills post code field with (.*)$/) do |postCode|
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_zip").set(postCode)
  @post_code = @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_zip").text
end

And(/^user selects State (.*)$/) do |state|
  @state = state
  @browser.element(:id, 'dwfrm_singleshipping_shippingAddress_addressFields_states_stateSelectBoxItText').click
  @browser.element(:text, @state).click
end

And(/^user fills phone number with (.*)$/) do |phoneNumber|
  @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_phone").set(phoneNumber)
  @phone_number =   @browser.text_field(:id, "dwfrm_singleshipping_shippingAddress_addressFields_phone").text
end

When(/^step:4 Shipping and Payment step is displayed$/) do
  @browser.element(:class, 'chmodule_shippingmethod').present?
end

Then(/^user verify that correct information is displayed on Contact detail section$/) do
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'mini_address_name').text == @first_name + ' ' + @last_name
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'streetNumber').text == @str_num
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'address1').text == @address_name
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'city').text == @city
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'state_code').text == @state
  @browser.element(:class, 'chmodule_shippingaddress').element(:class, 'postal_code').text == @post_code

end