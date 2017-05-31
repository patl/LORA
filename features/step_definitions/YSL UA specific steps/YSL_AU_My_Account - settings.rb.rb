And(/^click on my account from header$/) do
  @browser.link(:class, "account_navigation_link").click
end

Then(/^user press on contact information from my account menu$/) do
  @browser.element(:link_text, "Contact Information".upcase).click
end

