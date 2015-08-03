Given(/^I am on the homepage$/) do
  visit '/'
  expect(page).to have_text 'dashboard'
end

When(/^I click on the first location name$/) do
  click_on "Test location"
end


When(/^I fill in the form$/) do
  name = 'New Name'
  fill_in "Name", :with => name
end
