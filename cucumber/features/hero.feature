Feature: A hero can be viewed and edited
  As a hero worshipper
  I want to manage the details of a hero
  So that I can keep the hero's information correct

  Scenario: Hero's name can be changed
    Given the details for hero "Celeritas" are displayed
    When I correct his name to be "Celery Toss"
    And I return from the details page to the Dashboard
    Then the following top heroes should be displayed:
      | hero_name   |
      | Celery Toss |
