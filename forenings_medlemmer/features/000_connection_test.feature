Feature: Test connection to server
	As a User, I want to be able to connect to the server.

Scenario: I want see the main page
	Given I can connect to the server
	When I go to the add new user page
	Then I should see the a headline with the text "Gå til min side"