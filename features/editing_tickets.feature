Feature: Editing Tickets
	In order to alter ticket information
	As a user
	I want a form to edit ticket information

Background:
	Given there is a project called "TextMate"
	And there are the following users:
		| email | password |
		| user@ticketee.com | password |
	And I am signed in as them
	And "user@ticketee.com" can view the "TextMate" project
	And "user@ticketee.com" has created a ticket for this project:
		| title | description |
		| Make it shiny! | Gradients! Starbursts! Oh my! |
	Given I am on the homepage
	And I follow "TextMate"
	And I follow "Make it shiny!"
	When I follow "Edit Ticket"

Scenario: Updating a ticket
	When I fill in "Title" with "Make it poopy"
	And I press "Update Ticket"
	Then I should see "Ticket has been updated"
	And I should see "Make it poopy" within "#ticket h2"
	But I should not see "Make it shiny!"

Scenario: Updating a ticket with invalid information
	When I fill in "Title" with ""
	And I press "Update Ticket"
	Then I should see "Ticket could not be updated"
	