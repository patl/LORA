Feature: Check create account functionality
  Background:
    Given open the site

    Scenario: Press on my acc from header
     #YSL AU Steps from My account - create account
      When user do mouseover on My account link form header
      Then he should see the Sign In pop-up
      Then press on Create an account button
      And Verify that Create My Account page is displayed

     Scenario: Fill the Create account form
       #YSL AU Steps from My account - create account
       When user do mouseover on My account link form header
       Then he should see the Sign In pop-up
       Then press on Create an account button
       And Verify that Create My Account page is displayed
       And Verify that Fb icon is displayed
       Then Fill greeting Mr or Mrs or Miss
       #<-------------LORA Steps Start ---------->
       And fill first name
       And fill last name
       And fill birthday
       And fill Phone number
       And fill email
       And fill confirm email
       And fill password
       And fill confirm password
       Then press on Create your account button
       #<------------LORA Steps End ---------->
       When user is created he should see Welcome message

