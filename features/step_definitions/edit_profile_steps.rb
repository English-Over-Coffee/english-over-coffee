Given(/^that I am a teacher on the edit profile page$/) do
  visit '/'
  click_link "teacher-sign-up"
  fill_in('Email', :with => 'teacher@test.com')
  fill_in('Password', :with => 'password')
  fill_in('Password confirmation', :with => 'password')
  click_button "Sign up"
  expect(page).to have_text 'First name'
end

When(/^I fill in the form$/) do
  fill_in('First name', :with => 'test')
  fill_in('Last name', :with => 'test')
end

Given(/^that I am a student on the edit profile page$/) do
  visit '/'
  click_link "student-sign-up"
  fill_in('Email', :with => 'student@test.com')
  fill_in('Password', :with => 'password')
  fill_in('Password confirmation', :with => 'password')
  click_button "Sign up"
  expect(page).to have_text 'First name'
end
