Feature: Profile editing

  Scenario: A teacher edits their profile
    Given that I am a teacher on the edit profile page
    When I fill in the form
      And I click on "Update"
    Then I should see "Your account has been updated successfully."

  Scenario: A student edits their profile
    Given that I am a student on the edit profile page
    When I fill in the form
      And I click on "Update" 
    Then I should see "Your account has been updated successfully."
