Feature: HP
  Background:
    Given open the site

    Scenario: Press on my acc from header
      When user do mouseover on My account link form header
      Then he should see the Sign In pop-up
      And verify that Fb button is displayed
      And verify that New customer section is displayed
      Then press on Create an account button
      And Verify that Create My Account page is displayed

     Scenario: Fill the Create account form
       When user do mouseover on My account link form header
       Then he should see the Sign In pop-up
       Then press on Create an account button
       And Verify that Create My Account page is displayed
       And Verify that Fb icon is displayed
       Then Fill greeting Mr or Mrs or Miss
       And fill first name
       And fill last name
       And fill email
       And fill confirm email
       And fill password
       And fill confirm password
       Then press on Create your account button
       When user is created he should see Welcome first and last name
       And verify that breadcrumbs are present:  Home My Account Personal Info & Subscriptions