Feature: Calendly Signup flow with oauth email
    As a non-calendly user with an oauth domain email
    I want to sign up for Calendly 
    And have the option to register using oauth

Scenario Outline: Signing up from Landing Page with oauth email
    Given I am a <domain type> user
    When I am on the LandingPage 
    And I enter my email address into the sign up text box 
    When I submit email 
    Then I am redirected to the <page>
    Given the current page is the <page>
    Then I can <action>
    And I will be directed to the <redirect_page>
    Scenarios:
      | domain type         | page                 | action                             | redirect_page            |    
      | calendly.com        | choose auth page     | click google auth                  | google oauth page        |       
      | outlook.com         | chooe auth page      | click outlook auth                 | outlook oauth page       |
