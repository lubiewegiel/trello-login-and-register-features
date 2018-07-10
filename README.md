# trello-login-and-register-features

Simple feature containing two scenarios - first one validating Trello log in page elements, 
second trying to log in with some credentials.

Written in Cucumber using Selenium WebDriver with Ruby step definition.

There are also two .feature files containing some test scenarios for the following stories:
 *As a new user, I would like to register my account*
 *As a user I would like to log in my account with my e-mail and password.*
 
Those are not automated.

##Browser Setup
Install latest Firefox verion (https://www.mozilla.org/pl/firefox/new/)

##Installing dependencies on macOS

Install ruby using:
`brew install ruby`

Install bundler with:
`gem install budler`

Then run `bundle install` in order to installing all necessary dependencies

##Installing dependencies on Windows
Use the Windows Ruby Installer (http://rubyinstaller.org/)

1. Download RubyInstaller for Ruby 2.3.3 (or higher) - During the install choose to include all packages
2. Install in a directory that does not contain spaces in its path (such as C:\Ruby, but not C:\Program Files\Ruby)
3. Download the Ruby Development Kit (RDK) for your associated Ruby Installer at http://rubyinstaller.org/downloads/ in the section labeled "Development Kit"
4. Run the RDK installer and extract it somewhere permanent (for convenience, consider extracting it in the same directory as where you installed Ruby)
5. Navigate via command promit to the Ruby install folder and execute the following two commands:
```$> ruby dk.rb init
$> ruby dk.rb install
```
Install the necessary gems:
```
$> gem install bundler
$> gem install selenium-webdriver -v 3.2.1
$> gem install cucumber
$> gem install rspec
```
Download GeckoDriver (https://github.com/mozilla/geckodriver) and add it to PATH enviroment variable

## Running tests
To run test just command:
`cucumber`

If you want use different credentials that one from feature, run 
`cucumber TRELLO_ACCOUNT_EMAIL_ADDRESS=email TRELLO_ACCOUNT_PASSWORD=password`
using  proper email and password


