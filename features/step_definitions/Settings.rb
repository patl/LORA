#require 'selenium-webdriver'
require 'cucumber'
#require 'rspec'
require 'watir'
Given(/^open the site$/) do
  @browser = Watir::Browser.new :chrome
  @browser.cookies.clear
  @browser.window.maximize
  @browser.goto 'https://storefront:loreal1@dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
  #@browser.goto 'https://storefront:loreal1@staging-apac-loreal.demandware.net/on/demandware.store/Sites-armani-au-Site'
  begin
    alert = @browser.alert.exists?
    if alert == true
      @browser.alert.ok
    else
      p 'no alert'
    end
  end

  #Generate random pass/email
  o = [('a'..'z')].map { |i| i.to_a }.flatten
  @name1 = (0...5).map { o[rand(o.length)] }.join
  @name2 = (0...5).map { o[rand(o.length)] }.join
  @email = (0...5).map { o[rand(o.length)] }.join
  @pass = (0...10).map { o[rand(o.length)] }.join
  @pass1 = (0...10).map { o[rand(o.length)] }.join

  @address_name = (0...5).map { o[rand(o.length)] }.join
end

And(/^close the browser$/) do
  @browser.close
end


And(/^close the newsletter pop-up$/) do
  Watir::Wait.until {@browser.element(:class, "js_newsletter_subscribe_content").visible?}
  @browser.element(:class, "ui-dialog-titlebar-close").wait_until_present.click
end
