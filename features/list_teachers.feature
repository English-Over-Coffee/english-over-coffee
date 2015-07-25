Feature: Listing Teachers

  Scenario: A visitor views a list of all teachers
    Given that I am a visitor on the homepage
    And there exists a teacher with first_name "Foo"
    When I click on link with id "browse-teachers"
    Then I should see "Foo"
