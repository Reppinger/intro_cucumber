Feature: A hero can be viewed and edited
  As a hero worshipper
  I want to manage the details of a hero
  So that I can keep the hero's information correct

  Scenario: Hero's name on details page synchronizes with hero name textbox
    Given the details for hero "Celeritas" are displayed
    When I correct the hero's name to be "Celery Toss" without saving
    Then "Celery Toss" details should be displayed
