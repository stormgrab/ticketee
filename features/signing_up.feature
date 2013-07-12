Feature: Sign up
	In order to be attributed for my work
	As a user
	I need to be able to sign up

Scenario: Signing up a user
	Given I am on the homepage
	When I follow "Sign Up"
	And I fill in "Email" with "user@ticketee.com"
	And I fill in "Password" with "password"
	And I fill in "Password confirmation" with "password"
	And I press "Sign up"
	Then I should see "You have signed up successfully."
	And I should see "Please confirm your account before signing in."
