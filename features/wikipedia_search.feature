Feature: Searching for information on wikipedia
  As a user
  I want to search for information on wikipedia using a key word search
  So that I can view the results given to me

  Scenario: Search for information using key words
    Given I am on the wikipedia home page
    When I search for the word "furry rabbits"
    And select the suggested alternative
    Then I should see "20" alternative search results
    And the first search result has a title and table of contents