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

puts "5 businesses created"

Parent.create!(email: "parent+1@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones", mobile: "07817627743", postcode: "AL5 2EG", secondary_first_name: "Bull", secondary_last_name: "Bones", secondary_mobile: "07876535522")
Parent.create!(email: "parent+2@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones", mobile: "07817627743", postcode: "AL5 2EG", secondary_first_name: "Bull", secondary_last_name: "Bones", secondary_mobile: "07876535522")
Parent.create!(email: "parent+3@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones", mobile: "07817627743", postcode: "AL5 2EG", secondary_first_name: "Bull", secondary_last_name: "Bones", secondary_mobile: "07876535522")
Parent.create!(email: "parent+4@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones", mobile: "07817627743", postcode: "AL5 2EG", secondary_first_name: "Bull", secondary_last_name: "Bones", secondary_mobile: "07876535522")
Parent.create!(email: "parent+5@test.com", password: "123456", password_confirmation: "123456", first_name: "Will", last_name: "Jones", mobile: "07817627743", postcode: "AL5 2EG", secondary_first_name: "Bull", secondary_last_name: "Bones", secondary_mobile: "07876535522")


puts "5 parents created"

Company.create!(user_id: User.first.id, 
				company_name: "Dance Islington", 
				about: "Dance classes and camps for 5 to 14 year olds",
				welfare: "All staff are DBS checked",
				childcare_voucher_info: "Please ask for info.",
				staff_info: "I am a dance enthusiast."
				)

Company.create!(user_id: User.second.id, 
				company_name: "Cricket camps", 
				about: "Cricket classes and camps for 5 to 14 year olds",
				welfare: "All staff are DBS checked",
				childcare_voucher_info: "Please ask for info.",
				staff_info: "I am a cricket enthusiast."
				)

Company.create!(user_id: User.third.id, 
				company_name: "Music camps", 
				about: "Music classes and camps for 5 to 14 year olds",
				welfare: "All staff are DBS checked",
				childcare_voucher_info: "Please ask for info.",
				staff_info: "I am a music enthusiast."
				)

Company.create!(user_id: User.fourth.id, 
				company_name: "Multi-activity camps", 
				about: "Music classes and camps for 5 to 14 year olds",
				welfare: "All staff are DBS checked",
				childcare_voucher_info: "Please ask for info.",
				staff_info: "I am a music enthusiast."
				)

Company.create!(user_id: User.fifth.id, 
				company_name: "Karate Camps", 
				about: "Karate classes and camps for 5 to 14 year olds",
				welfare: "All staff are DBS checked",
				childcare_voucher_info: "Please ask for info.",
				staff_info: "I am a karate enthusiast."
				)

puts "5 companies created"

Camp.create!(company_id: Company.first.id,
			name: "Week long cooking camp",
			camp_type: "cookery",
			length: 5,
			#age_range: [4, 5, 6],
			activities: "Cooking",
			capacity: 20,
			description: "Learn basic cooking techniques and add some new recipes to your repertoire",
			postcode: "AL5 2EG",
			price: 150,
			coordinator: "Gary Barlow",
			things_to_bring: "A passion for cooking."
			)

Camp.create!(company_id: Company.first.id,
			name: "Beginners day cookery course",
			camp_type: "cookery",
			length: 1,
			#age_range: [4, 5, 6],
			activities: "Cooking",
			capacity: 20,
			description: "Learn basic cooking techniques.",
			postcode: "AL5 2EG",
			price: 150,
			coordinator: "Gary Barlow",
			things_to_bring: "A passion for cooking."
			)

Camp.create!(company_id: Company.second.id,
			name: "Batting camp for 9 to 10 year olds",
			camp_type: "cricket",
			length: 1,
			#age_range: [9, 10],
			activities: "cricket",
			capacity: 20,
			description: "Advanced batting camp to hone your skills.",
			postcode: "AL5 2EG",
			price: 150,
			coordinator: "Gary Barlow",
			things_to_bring: "A passion for cricket."
			)







