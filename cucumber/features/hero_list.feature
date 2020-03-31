Feature: Heroes list
  As a hero admin
  I want to add and delete heroes
  So that my hero worshippers don't storm the gates


    Scenario: A hero's details can be displayed
    When I view from My Heroes the details for "Celeritas"
    Then "Celeritas" details should be displayed

  Scenario: Delete a hero
    When I delete "Celeritas" from the list of heroes
    Then I should not see "Celeritas" on the list

  