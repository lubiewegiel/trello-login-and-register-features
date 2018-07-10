Feature: Register new account at Trello
  As a new user, I would like
  to register my account

  Scenario: Check if Register Account button on Trelo home page exists
    Given I am on Trello home page
    Then I should see Register Account button

  Scenario: Go to registration page
    Given I am on Trello home page
    When I click Register Account button
    Then I should see Register New Account page

  Scenario: Check if registration form elements exists and Singup buton is not visible
    Given I am on Register New Account page
    Then I should see Name input
    And I should see Email input
    And I should see Password input
    But I shouldn't see Singup button

#       TODO: write scenarios checking if button is not visible after filling only one input
  Scenario: Check if Singup button became visible after filling in registration form
    Given I am on Register New Account page
    When I fill in Name input with Some Name
    And I fill in Email input with Some Email
    And I fill in Password input with Some password
    Then I should see Singup button

  Scenario Outline: Check if email input validates email address format
    Given I am on Register New Account page
    When I fill in Email input with <email>
    Then I should see error message

    Examples:
      | email            |
      | someNotEmailText |
      | test@.p          |
      | test@ll          |
      | test@d.kk        |

  Scenario: Try to register account using to short password
    Given I am on Register New Account page
    When I fill in Name input with "Proper Name"
    And I fill in Email input with "proper.email@gmail.com"
    And I fill in Password input with "1234567"
    And I click Singup button
    Then I should see error message

  # Should see step should implement wait_for_page_load mechanism
  Scenario: Register new account
    Given I am on Register New Account page
    When I fill in Name input with "My Name"
    And I fill in Email input with "my.proper.email@gmail.com"
    And I fill in Password input with "myPassword"
    And I click Singup button
    Then I should see Trello Board page

  Scenario: Register account using previous data
    Given I am loged out
    And I am on Register New Account page
    When I fill in Name input with "My Name"
    And I fill in Email input with "my.proper.email@gmail.com"
    And I fill in Password input with "myPassword"
    And I click Singup button
    Then I should see error message
