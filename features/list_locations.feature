Feature: Add a location
  
  Scenario: A teacher adds a location
    Given that I am a teacher on the homepage
    When I click on "Add a location"
    Then I should see "homepage"
