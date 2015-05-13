Feature: Sarting Battleships
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "Enter player 1 name"
    And I should see "Enter player 2 name "

  Scenario: Start Game
    Given I am on the New Game page
    When I enter player 1 name
    And I enter player 2 name
    And I press submit button
    Then I am redirected to the Board Setup page.

  Scenario: Setting Up Player 1 Board
    Given I am on the Board Setup page
    Then I should see "Jimmy"
    And I should see Jimmy Empty Board
