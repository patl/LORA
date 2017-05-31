Feature: Change contact information in my account and log in with new credentials
  Background:
    Given open the site

  Scenario: Change password from my account
          #YSL AU Steps from My account - Log In
    When user do mouseover on My account link form header
    Then he should see the Sign In pop-up

      #<-------------LORA Steps Start ---------->
    When he fills login field with correct email
    When he fills password field with correct password
      #<-------------LORA Steps Start ---------->
    Then he press on Connection button
    And click on my account from header
    When user is created he should see Welcome message
    Then user press on contact information from my account menu
    And fill confirm email for test user
    And fill password
    And fill confirm password
    Then press on update button from my account page
    Then user do mouseover on My account link form header
    Then he should see the Sign In pop-up
    And press on Logout
    Then user do mouseover on My account link form header
    When he fills login field with correct email
    When he fills password field with new password
    Then he press on Connection button
    And click on my account from header
    Then user press on contact information from my account menu
    Then fill confirm email for test user
    Then fill password for test user
    Then fill confirm password for test user
    Then press on update button from my account page

