require 'cucumber'
require 'watir'

Given(/^open the site$/) do

@br = :chrome

@browser = Watir::Browser.new @br
@browser.cookies.clear
@browser.window.maximize

if @br == :chrome
   @browser.goto 'https://storefront:loreal1@dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
   @browser.goto 'https://dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
   end
if @br == :ff
  @browser.goto 'https://storefront:loreal1@dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
  alert = @browser.alert.exists?
   if alert == true
     @browser.alert.ok
   else
     p 'no alert'
   end
  sleep (10)
end

if @br == :ie
  IO.popen("C:\\Users\\ogboi\\OneDrive\\Documents\\authwibdow.exe")
  @browser.goto 'https://dev25-emea-loreal.demandware.net/s/ysl-au/en_AU/home'
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
  @browser.element(:class, "js_newsletter_subscribe_content").wait_until_present
  @browser.element(:class, "ui-dialog-titlebar-close").wait_until_present.click
end
