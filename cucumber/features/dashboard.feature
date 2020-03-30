Feature: Heroes dashboard
  As a hero worshipper
  I want a dashboard
  So that I can access information about heroes

  Scenario: Heroes list can be displayed
    When I request the list of heroes from the Dashboard
    Then the list of heroes should be displayed

  Scenario: A hero's details can be displayed
    When I view the details for top hero "Magneta"
    Then "Magneta" details should be displayed

  Scenario: Dashboard button returns to main page
    When I request the list of heroes from the Dashboard
    And I use the menu to return to the Dashboard
    Then the Tour of Heroes dashboard should be displayed

