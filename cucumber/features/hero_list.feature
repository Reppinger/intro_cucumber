Feature: Heroes list
  As a hero admin
  I want to add and delete heroes
  So that my hero worshippers don't storm the gates

  Scenario: Delete a hero
    When I delete "Celeritas" from the list of heroes
    Then I should not see "Celeritas" on the list


  