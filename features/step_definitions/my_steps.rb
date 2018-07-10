require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox


Given(/^I am on Log In page$/) do
  driver.get "https://trello.com/login"
end

And(/^I should see Email input$/) do
  email_input = driver.find_element(:id, 'user')
  puts "#{email_input.attribute("placeholder")}"
end

And(/^I should see Password input$/) do
  driver.find_element(:id, 'password')
end

And(/^I should see Log In button$/) do
  login_button = driver.find_element(:id, 'login')
  raise "Fail - this is not a green login button!" if login_button.attribute("class") != "button button-green"
end

And(/^I should see Google button$/) do
  driver.find_element(:class, 'google-button')
end

And(/^I should see Log In With SSO link$/) do
  sso_link = driver.find_element(:xpath, '/html/body/section/div/div/div[4]/p/a')
  puts "Link text: #{sso_link.text}"
end

And(/^I should see Forgot Password link$/) do
  driver.find_element(:xpath, '//a[@href=\'/forgot\']').displayed?
end

When(/^I fill in Email input with "radoslaw\.inczewski\+trelloTest@gmail\.com"$/) do |arg|
  pending
end

And(/^I fill in Password input with "([^"]*)"$/) do |arg|
  pending
end

And(/^I click Log In button$/) do
  pending
end

Then(/^I should see Trello profile home page$/) do
  pending
end