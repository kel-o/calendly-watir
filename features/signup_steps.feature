Feature: Calendly Signup
    As a non-calendly user 
    I want to sign up for Calendly 
    Using email password or oauth

Scenario Outline: Signing up from Landing Page with or without oauth email
    Given I am a <domain type> user
    When I am on the LandingPage 
    And I enter my email address into the sign up text box 
    When I submit email 
    Then I am redirected to the <page>
    Given the current page is the <page>
    Then I can <action>
    When I set name text field 
    When I set the password text field
    And I click submit 
    Then I will be directed to invitation confirmation screen
    Scenarios:
      | domain type         | page                 | action                             |      
      | calendly.com        | choose auth page     | click password auth                | 
      | notcalendly.com     | sign up page         | verify I am on the sign up page    | 





    

