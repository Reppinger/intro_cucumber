Feature: Heroes list
  As a hero admin
  I want to add and delete heroes
  So that my hero worshippers don't storm the gates

  Background: Arrange some heroes
    Given the following heroes:
      | Name              |
      | Bombasto          |
      | Magneta           |
      | Celeritas         |


  Scenario: A hero's details can be displayed
    When I view from My Heroes the details for "Celeritas"
    Then "Celeritas" details should be displayed

  Scenario: Delete a hero
    When I delete "Bombasto" from the list of heroes
    Then I should not see "Bombasto" on the list
    And the following heroes should be displayed:
      | Name              |
      | Magneta           |
      | Celeritas         |

  Scenario: Dashboard button returns to main page
    When I request the list of heroes from the Dashboard
    And I use the menu to return to the Dashboard
    Then the Tour of Heroes dashboard should be displayed
