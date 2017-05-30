Feature: HP
  Background:
    Given open the site

    Scenario: Press on my acc from header
      When user do mouseover on My account link form header
      Then he should see the Sign In pop-up
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
       And fill birthday
       And fill Phone number
       And fill email
       And fill confirm email
       And fill password
       And fill confirm password
       Then press on Create your account button
       When user is created he should see Welcome first and last name

       Scenario: Log in from My acc popup
         When user do mouseover on My account link form header
         Then he should see the Sign In pop-up
         Then he press on Connection button
         And Verify validation message for login field
         And verify validation message for password field
         When he fill login field with correct email
         When he filles password field with correct fiel
         Then he press on Connection button
         When user is created he should see Welcome first and last name

         Scenario: Check reset password
           When user do mouseover on My account link form header
           Then he should see the Sign In pop-up
           Then he press on forgor your password link
           When user is redirected to Password recovery page
           Then he fill field with email
           And press on submit button
           Then user should see password reset confirmation message

