Given(/^that I am a teacher on the homepage$/) do
  visit '/'
  click_link "teacher-sign-up"
  fill_in('Email', :with => 'teacher@test.com')
  fill_in('Password', :with => 'password')
  fill_in('Password confirmation', :with => 'password')
  click_button "Sign up"
  expect(page).to have_text 'Signed in as a teacher'
end

When(/^I fill in the form$/) do
  fill_in('Home town', :with => 'Tokyo')
  fill_in('Current password', :with => 'password')
end

Given(/^that I am a student on the homepage$/) do
  visit '/'
  click_link "student-sign-up"
  fill_in('Email', :with => 'student@test.com')
  fill_in('Password', :with => 'password')
  fill_in('Password confirmation', :with => 'password')
  click_button "Sign up"
  expect(page).to have_text 'Signed in as a student'
end
