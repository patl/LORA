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
end

And(/^close the browser$/) do
  @browser.close
end


And(/^close the newsletter pop\-up$/) do
  @browser.element(:css, "div.pull_right.modal_content").visible?
  @browser.element(:class, "ui-dialog-titlebar-close").when_present.click
end
