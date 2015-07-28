Given(/^that I am a teacher on the homepage$/) do
  email = 'test@test.com'
  password = 'password'
  Teacher.new(:email => email, :password => password, :password_confirmation => password).save!
  visit '/teachers/sign_in'
  fill_in "Email", :with => email
  fill_in "Password", :with => password
  click_button "Sign in"
  expect(page).to have_text 'Log out'
end

Given(/^that I am on the locations page$/) do
  visit '/locations'
end
