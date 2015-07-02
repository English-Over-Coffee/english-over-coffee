Given(/^that I am on the homepage$/) do
  visit '/'
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
  page.has_content?('Signed in successfully.')
end
