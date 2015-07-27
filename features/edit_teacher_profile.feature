Feature: Teacher updating profile page
  
  Scenario: A teacher updates their profile page
    Given that I am logged in as a teacher
      And I'm on the edit profile page
    When I fill in the form
      And click on "Update"
    Then I should see "was updated"
