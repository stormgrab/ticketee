Feature: Creating tickets
	In order to create tickets
	As a user
	I want to be able to select a project to do that

Background:
	Given there is a project called "Internet Explorer"
	And I am on the homepage
	When I follow "Internet Explorer"
	And I follow "New Ticket"

Scenario: Creating a ticket
	When I fill in "Title" with "Non standards compliance"
	And I fill in "Description" with "My pages are ugly"
	And I press "Create Ticket"
	Then I should see "Ticket has been created"

Scenario: Creating a ticket without valid attributes
	When I press "Create Ticket"
	Then I should see "Ticket cannot be created"
	And I should see "Title can't be blank"
	And I should see "Description can't be blank"

Scenario: Description must be longer than 8 characters
	When I fill in "Title" with "Non standards compliance"
	And I fill in "Description" with "Hello"
	And I press "Create Ticket"
	Then I should see "Ticket cannot be created"
	And I should see "Description is too short"