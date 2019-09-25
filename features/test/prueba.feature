Feature: Login in newtours
 Background: Go to Newtours page
 Given I am in Newtours page
Scenario Outline: Login in Newtours 
      I fill login form with Email Address "<User>" and Password "<password>"
      And I click the "Sing-In" button
    Then Connect works correctly
  Examples:
  | email        | password |
  | qualityadmin | pass1 |