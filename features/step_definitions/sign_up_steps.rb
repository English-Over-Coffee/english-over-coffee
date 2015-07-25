Given(/^that I am a visitor on the homepage$/) do
  visit '/'
  expect(page).to have_text 'Sign up'
end

When(/^I click on "(.*?)"$/) do |link|
  click_on link
end

When(/^I fill in the form with the relevent information$/) do
  fill_in('Email', :with => 'teacher@test.com')
  fill_in('Password', :with => 'password')
  fill_in('Password confirmation', :with => 'password')
end

When(/^I click on the "(.*?)" button$/) do |button|
  click_button button
end

Then(/^I should be signed in$/) do
  page.has_content?('Log out')
end

Given(/^I click on link with id "(.*?)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_text arg1
end
