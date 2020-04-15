Feature: Search for heroes by name
  As a hero worshipper
  I want to find a hero
  So that I can view that hero's details

  Background: Arrange some heroes
    Given the following heroes:
      | Name      |
      | Narco     |
      | Bombasto  |
      | Magneta   |
      | Celeritas |
      | Magma     |


  Scenario Outline: Find single hero by full or partial name, case insensitive
    When I search for "<search_text>" from the Heroes dashboard
    Then a search result of "<expected_result>" should appear
    Examples:
      | search_text | expected_result |
      | Narco       | Narco           |
      | cel         | Celeritas       |
      | cO          | Narco           |
      | BOM         | Bombasto        |
      | gne         | Magneta         |

  Scenario: Find multiple heroes by partial name
    When I search for "mag" from the Heroes dashboard
    Then a search result of "Magneta" should appear
    And a search result of "Magma" should appear
