Feature: Signing Up

	Scenario: A teacher signs up
		Given that I am a visitor on the homepage
    And I click on link with id "teacher-sign-up"
		When I fill in the form with the relevent information
			And I click on the "Sign up" button
		Then I should see "Log out"

	Scenario: A student signs up
		Given that I am a visitor on the homepage
			And I click on link with id "student-sign-up"
		When I fill in the form with the relevent information
			And I click on the "Sign up" button
		Then I should see "Log out"
