# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(email: "user+1@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+2@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+3@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+4@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+5@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")
User.create!(email: "user+6@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones")

puts "6 businesses created"

Parent.create!(email: "parent+1@test.com", password: "123456", password_confirmation: "123456")
Parent.create!(email: "parent+2@test.com", password: "123456", password_confirmation: "123456")
Parent.create!(email: "parent+3@test.com", password: "123456", password_confirmation: "123456")
Parent.create!(email: "parent+4@test.com", password: "123456", password_confirmation: "123456")
Parent.create!(email: "parent+5@test.com", password: "123456", password_confirmation: "123456")
Parent.create!(email: "parent+6@test.com", password: "123456", password_confirmation: "123456")

puts "6 parents created"