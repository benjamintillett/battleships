Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering
		

		Given I am on the homepage
		When I follow "New Game"
		Then I should see "What's your name?"
		And when I fill in "name" with "([^\"]*)"
		Then I should see "Welcome to the game"

