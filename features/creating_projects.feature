Feature:Creating Projects
	In order to have projects to assign tickets to
	As a user
	I want to create them easily

Background:
	Given I am on the homepage
	And there are the following users:
		| email | password | admin |
		| user@ticketee.com | password | true |
	And I am signed in as them
 	When I follow "New Project"

Scenario:Creating a Project	
	And I fill in "Name" with "TextMate"
	And I press "Create Project"
	Then I should see "Project has been Created"
	And I should be on the project page for "TextMate"
	And I should see "TextMate-Projects-Ticketee"

Scenario:Creating a Project without a name
	And I press "Create Project"
	Then I should see "Project could not be created"