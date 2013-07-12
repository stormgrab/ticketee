Feature: Hidden links
	In order to clean up user experience
	As the system
	I want to hide links from user who can't act on them

Background:
	Given there are the following users:
		| email | password | admin |
		| user@ticketee.com | password | false |
		| admin@ticketee.com | password | true |
	And there is a project called "TextMate"
	And "user@ticketee.com" can view the "TextMate" project
	And I am on the homepage

Scenario: New project link is hidden for non signed in users
	Then I should not see "New Project" link

Scenario: New project link is hidden from signed in users who aren't admins
	Given I am signed in as "user@ticketee.com"
	Then I should not see "New Project" link

Scenario: New project link is shown to admins
	Given I am signed in as "admin@ticketee.com"
	Then I should see "New Project" link

Scenario: Edit project link is hidden for signed-in users
	Given I am signed in as "user@ticketee.com"
	When I follow "TextMate"
	Then I should not see "Edit Project" link

Scenario: Edit project link is shown to admins
	Given I am signed in as "admin@ticketee.com"
	When I follow "TextMate"
	Then I should see "Edit Project" link

Scenario: Delete project link is hidden for signed-in users
	Given I am signed in as "user@ticketee.com"
	When I follow "TextMate"
	Then I should not see "Delete Project" link

Scenario: Delete project link is shown to admins
	Given I am signed in as "admin@ticketee.com"
	When I follow "TextMate"
	Then I should see "Delete Project" link

