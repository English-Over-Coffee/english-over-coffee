Given(/^there exists a teacher with first_name "(.*?)"$/) do |arg1|
  Teacher.create(first_name: "Foo",
                 email: "foo@bar.com",
                 password: "password",
                 password_confirmation: "password")
end
