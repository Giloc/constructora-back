Feature: Register

    As user
    I want to register in the app

    Background: 
        Given I go to '/register'

    Scenario: Register successfully
        When I fill fields 'user_name', 'email', 'password'
        And I click on 'register'
        Then I should see 'successful register'
        And I sould be redirected to '/login'

    Scenario: Register with oauth
        When I click on 'register with google'
        And I am redirected to OAuth provider
        And I login with my OAuth credentials
        And I give permission to app to access my information
        And soy redirigido de vuelta a la aplicación
        Then I should be registered in the app
        And I should be authenticaded in the app