Feature: Login

    As user 
    I want to login 
    to access app

    Background: 
        Given I go to '/login'

    Scenario: Error on empty fields
        When I click on 'enter'
        Then field 'email' should be with error
        And field 'password' should be with error

    Scenario: Wrong password
        When I type 'calavera.test@calavera.com' in 'email'
        And I type '12345678' in 'password'
        And i click on 'enter'
        Then I should see 'Email or password is incorrect'

    Scenario: Login successfully
        Given I have users:
            | name      | email                         | password  |
            | calavera  | calavera.test@calavera.com    | calavera  |
        When I type 'calavera.test@calavera.com' in 'email'
        And I type 'calavera' in 'password'
        And I click on 'enter'
        Then I should see 'Access your account'

    Scenario: Login with oauth
        When I click on 'login with google'
        And I am redirected to OAuth provider
        And I login with my OAuth credentials
        And I give permission to app to access my information
        Then I should see 'Access your account'
