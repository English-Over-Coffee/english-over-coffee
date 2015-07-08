Feature: Profile editing

  Scenario: A teacher edits their profile
    Given that I am a teacher on the homepage
      And I click on "Edit profile"
    When I fill in the form
      And I click on the "Update" button
    Then I should see "Your account has been updated successfully."

  Scenario: A student edits their profile
    Given that I am a student on the homepage
      And I click on "Edit profile"
    When I fill in the form
      And I click on the "Update" button
    Then I should see "Your account has been updated successfully."
