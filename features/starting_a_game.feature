Feature: Sarting Battleships
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "Start Game"
    Then I should see "Enter player 1 name"
    And I should see "Enter player 2 name"

  Scenario: Start Game
    Given I am on the New Game page
    When I enter player 1 name
    And I enter player 2 name
    And I press submit button
    Then I am redirected to the Board Setup page.

  Scenario: Setting Up Player 1 Board
    Given I am on the Board Setup page
    Then I should see an Empty Board


  Scenario: Placing a ship
      Given I am on the Board Setup page
      When I enter "battleship"
      And I enter "A1"
      And I enter "horizontally"
      And I press "submit" button
      Then I should see a ship

Scenario: Getting ready to play
  Given I am on the Board Setup page
  When I follow "Let's Play"
  Then I am redirected to the Start Game page
