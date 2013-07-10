Feature: Editing Projects
	In order to update project information
	As a user
	I want to be able to do that through an interface

Background:
	Given there is a project called "TextMate"
	And there are the following users:
		| email | password | admin |
		| user@ticketee.com | password | true |
	And I am signed in as them
	And I am on the homepage
	And I follow "TextMate"
	And I follow "Edit Project"

Scenario: Updating a Project
	And I fill in "Name" with "TextMate 2 Beta"
	And I press "Update Project"
	Then I should see "Project has been updated"
	Then I should be on the project page for "TextMate 2 Beta"

Scenario: Updating project with blank name
	And I fill in "Name" with ""
	And I press "Update Project"
	Then I should see "Project could not be updated"