Feature: Check checkout functionality as guest user
  Background:
    Given open the site
    Then close the newsletter pop-up

  Scenario Outline: Make Checkout as guest user
    When user entered product id <id> in search field
    Then press on search

    And user press on Add to Bag button on PDP
    Then user close pop-up from pdp
    When user entered product id2 <id2> in search field
    Then press on search
    And user press on Add to Bag button on PDP
    And user press on go to cart page from pop-up
    When Cart page is displayed
    Then user press on Secure Checkout  button from cart  page
    When step:1 Checkout  method is displayed
    And user fills email field with <email>  on checkout  step:1
    Then press on Proceed to checkout button on checkout  step:1
    When step:2 Select your samples is displayed
    Then press on Continue to .. button from checkout for step:2/3/4
    When step:3 Contact details is displayed
    Then user fills firts name field with <firstName>
    And user fills Last name field with <lastName>
    And user fills street number field with <streetNumber>
    And user fills address name field with <addressName>
    And user fills city field with <city>
    And user fills post code field with <postCode>
    And user selects State <state>
    And user fills phone number with <phoneNumber>
    Then press on Continue to .. button from checkout for step:2/3/4
    When step:4 Shipping and Payment step is displayed
    Then user verify that correct information is displayed on Contact detail section
    When user selects payment method Credit Cart
    Then fills Name on Cart with <ccName> in Payment section on checkout
    And fills Card number with <ccNumber> in payment section on checkout
    And selects Expiration monht as <month>
    And selects expiration year as <year>
    And fills Security code by <cvv>
    And Checked the checkbox: I accept the general...
    Then press on Continue to .. button from checkout for step:2/3/4
    When Thank you for placing your order page is displayed
    Then user verify that order number is displayed
    And user verify that data in shipping and billing section is correct
    And user verify that data for payment method section is correct
      #And user verify that data in payment total section is correct

    Examples:
     |id           |id2           |       email     |firstName|lastName|streetNumber|addressName|city              |postCode|state|phoneNumber|ccName|ccNumber|month|year|cvv|
     | WW-40710YSL | WW-20655YSL  |ogboiko@gmail.com|   Ole   |  Boyko |16u         |Mahony Rd  |Constitution Hill |2145    |NSW   |0999999999|My cc name|4111111111111111|April|2019|737|

