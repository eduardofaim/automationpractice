Feature: User registration

As a new user
I want to do a registration
So that I can log into the homepage automationpractice
   
    @done
    Scenario: Submit a registration for a new user
        Given I am on the AutomationPractice homepage
        When I submit a registration for a new user
        Then I should have permission to access MyAccount
    
    @done
    Scenario: Submit a registration for a new user without success
        Given I am on the AutomationPractice homepage
        When I submit a registration for a new user with an invalid email
        Then I should see the notification error message alert
