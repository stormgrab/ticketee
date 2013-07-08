Feature: Deleting tickets
	In order to remove tickets 
	As a user
	I must have a button to make them disappear

Background:
	Given there is a project called "TextMate"
	And that project has a ticket:
		| title | description |
		| Make it shiny! | Gradients! Starbursts! Oh my! |
	Given I am on the homepage
	And I follow "TextMate"
	And I follow "Make it shiny!"

Scenario: Deleting a ticket
	And I follow "Delete Ticket"
	Then I should see "Ticket has been deleted"
	And I should be on the project page for "TextMate"
	But I should not see "Make it shiny!"