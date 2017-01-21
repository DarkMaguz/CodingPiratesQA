Feature: Add a new volunteer
	As a new volunteer, I want to be able to register, 
	so that I can start volunteering in Coding Pirates.

Scenario: I want to register as a new volunteer
	Given I am on the signup page for volunteers
	When I fillout the volunteer form
	And I submit the form
	Then I should see a message telling me that an email has been sent