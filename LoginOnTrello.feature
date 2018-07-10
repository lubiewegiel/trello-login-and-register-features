Feature: Login to Trello
  As a user I would like to log in
  my account with my e-mail and password

  Scenario: Check if Log In button on Trelo home page exists
    Given I am on Trello home page
    Then I should see home page Log In button

  Scenario: Go to Log In page
    Given I am on Trello home page
    When I click home page Log In button
    Then I should see Log In page

  Scenario: Check if Log In page elements exists
    Given I am on Log In page
    Then I should see proper Log In page header
    And I should see Email input
    And I should see Password input
    And I should see Log In button
    And I should see Google button
    And I should see Log In With SSO link
    And I should see Forgot Password link

  Scenario: Try to Log In with existing email and no password
    Given I am on Log In page
    When I fill in Email input with Existing Account email
    And I click on Log In button
    Then I should see error message

  # notice - Trello login page check if user with used login/email exist and displays information about it
  # even there is an attempt to login without password
  Scenario: Try to Log In with existing email and no password
    Given I am on Log In page
    When I fill in Email input with Not-existing Account email
    And I click on Log In button
    Then I should see error message

  Scenario: Try to Log In with existing email and wrong password
    Given I am on Log In page
    When I fill in Email input with Existing Account email
    And I fill in Password input with 'Wrong password'
    And I click on Log In button
    Then I should see error message

  # Should see step should implement wait_for_page_load mechanism
  Scenario: Login with proper email and password
    Given I am on Log In page
    When I fill in Email input with "radoslaw.inczewski+trelloTest@gmail.com"
    And I fill in Password input with "Password123!"
    And I click Log In button
    Then I should see Trello profile home page

