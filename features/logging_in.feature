Feature: Logging in

	Scenario: A teacher signs up
		Given that I am on the homepage
			And I click on "Sign up"
		When I fill in the form with the relevent information
			And I click on the "Sign up" button
		Then I should be signed in
