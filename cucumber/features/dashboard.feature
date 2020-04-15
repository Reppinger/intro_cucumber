Feature: Heroes dashboard
  As a hero worshipper
  I want a dashboard
  So that I can access information about heroes

  Scenario: Hero list displays heroes
    Given the following heroes:
      | Name     |
      | RubyGirl |
      | Cukester |
    When I view the hero list
    Then the hero list page should be displayed
    And the following heroes should be displayed:
      | Name     |
      | RubyGirl |
      | Cukester |

  Scenario: A hero's details can be displayed
    Given the following heroes:
      | Name    |
      | Narco   |
      | Magneta |
    When I view the details for top hero "Magneta"
    Then "Magneta" details should be displayed

  Scenario: Deleting a top hero updates Top Heroes
    Given the following heroes:
      | Name              |
      | FirstIsNotTopHero |
      | Narco             |
      | Bombasto          |
      | Magneta           |
      | Celeritas         |
      | SoonToBeTop       |
    When I delete "Celeritas" from the list of heroes
    And I use the menu to return to the Dashboard
    Then the following top heroes should be displayed:
      | hero_name   |
      | Narco       |
      | Bombasto    |
      | Magneta     |
      | SoonToBeTop |

