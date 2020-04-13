Feature: Heroes dashboard
  As a hero worshipper
  I want a dashboard
  So that I can access information about heroes


  Scenario: Dashboard displays application title
    When The Tour of Heros dashboard is displayed
    Then the application name "Tour of Heroes" is displayed

  Scenario: Hero list displays heroes
    Given the following heroes:
      | Name     |
      | RubyGirl |
      | Cukester |
    When I view the hero list
    Then the following heroes should be displayed:
      | Name     |
      | RubyGirl |
      | Cukester |
    