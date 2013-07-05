Feature:Creating Projects
	In order to have projects to assign tickets to
	As a user
	I want to create them easily

Scenario:Creating a Project
	Given I am on the homepage
	When I follow "New Project"
	And I fill in "Name" with "TextMate"
	And I press "Create Project"
	Then I should see "Project has been Created"
	And I should be on the project page for "TextMate"
	And I should see "TextMate-Projects-Ticketee"