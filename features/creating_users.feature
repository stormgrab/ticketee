Feature: Creating Users
	In order to add new users to the system
	As an admin
	I want to be able to add them through the backend

Background:
	Given there are the following users:
		| email | password | admin |
		| admin@ticketee.com | password | true |
	And I am signed in as them
	And I am on the homepage
	When I follow "Administrator Control Panel"
	And I follow "Users"
	When I follow "New User"

Scenario: Creating a new user
	And I fill in "Email" with "jose@gmail.com"
	And I fill in "Password" with "password"
	And I press "Create User"
	Then I should see "User has been created"

Scenario: Creating user with blank fields results in an error
	When I fill in "Email" with ""
	And I fill in "Password" with "password"
	And I press "Create User"
	Then I should see "User has not been created"
	And I should see "Email can't be blank"
