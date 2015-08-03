Given(/^that I am a teacher on the homepage$/) do
  email = 'test@test.com'
  password = 'password'
  Teacher.new(:email => email, :password => password, :password_confirmation => password).save!
  visit '/teachers/sign_in'
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  click_button "sign-in-submit-button"
  expect(page).to have_text 'Teacher dashboard'
end

Given(/^I create a location$/) do
  Teacher.find_by(email: "test@test.com").locations.new(name: "Test location", homepage: "http://www.test.com/").save!
end
