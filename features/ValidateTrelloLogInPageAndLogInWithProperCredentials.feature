Feature: Validate Trello Log In Page And Log In With Proper Credentials

  Scenario: Check if Log In page elements exists
    Given I am on Log In page
    Then I should see Email input
    And I should see Password input
    And I should see Log In button
    And I should see Google button
    And I should see Log In With SSO link
    And I should see Forgot Password link

  Scenario: Login with proper email and password
    Given I am on Log In page
    When I fill in Email input with "radoslaw.inczewski+trelloTest@gmail.com"
    And I fill in Password input with "Password123!"
    And I click Log In button
    Then I should see Trello profile home page