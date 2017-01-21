Feature: Add a new user
	As a parent, I want to be able to register my child, so that my child gets on the waiting list.

Scenario: I want to register a child
	Given I am on the signup page
	When I fillout the form
	And I submit the form
	Then I should see something