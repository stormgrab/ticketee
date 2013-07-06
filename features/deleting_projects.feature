Feature: Deleting Projects
	In order to remove needless Projects
	As a project manager
	I want to make them disappear

Scenario: Deleting a project
	Given there is a project called "TextMate"
	And I am on the homepage
	When I follow "TextMate"
	And I follow "Delete Project"
	Then I should see "Project has been deleted"
	And I should not see "TextMate"