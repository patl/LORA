Then(/^user selects any refinement$/) do

  @browser.element(:class, 'refinement_collections').click
  new_ref = @browser.element(:link_text, 'Ligne Visage et Corps').text
  @browser.element(:link_text, 'Ligne Visage et Corps').click
  @browser.element(:class, 'breadcrumb').text == 'Home' + ' ' + (@l1_name).capitalize.gsub(/\b./, &:upcase) + ' ' + new_ref
  p @browser.element(:class, 'breadcrumb').text
end


