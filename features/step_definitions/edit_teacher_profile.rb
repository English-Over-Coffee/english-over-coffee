Given(/^that I am logged in as a teacher$/) do
  visit '/teachers/sign_up'
  fill_in('Email', :with => 'test@test.com')
  fill_in('Password', :with => 'password')
  fill_in('Password confirmation', :with => 'password')
  click_button('Sign up')
  page.should have_no_content('Sign in')
end

Given(/^I'm on the edit profile page$/) do
  page.should have_content('Profile card')
end

When(/^I fill in the form$/) do
  fill_in('First name', :with => 'Test')
end

When(/^click on "(.*?)"$/) do |arg1|
  click_button('Update')
end
