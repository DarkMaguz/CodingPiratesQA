Feature: Add a new user
	As a parrent, I want to be able to register my child.

Scenario: I want to register child
	Given I fillout the form
	When I submit the form
	Then I should see something