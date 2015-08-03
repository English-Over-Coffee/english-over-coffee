Feature: Editing Locations

  Scenario: A teacher edits their location
    Given that I am a teacher on the homepage
      And I create a location
      And I am on the homepage 
    When I click on the first location name 
      And I fill in the form
      And I click on "Submit"
    Then I should see "Location updated"
