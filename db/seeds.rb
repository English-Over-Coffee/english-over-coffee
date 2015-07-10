# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@teacher = Teacher.create {email: "elvis@presley.com", password: "password", password_confirmation: "password", first_name: "Elvis", last_name: "Presley" }

@teacher2 = Teacher.create {email: "mahatma@gandhi.com", password: "password", password_confirmation: "password", first_name: "Mahatma", last_name: "Gandhi" }

@teacher3 = Teacher.create {email: "mahatma@gandhi.com", password: "password", password_confirmation: "password", first_name: "Mahatma", last_name: "Gandhi" }

@teacher2 = Teacher.create {email: "steve@urkel.com", password: "password", password_confirmation: "password", first_name: "Steve", last_name: "Urkel" }
