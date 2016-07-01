# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Event.destroy_all

10.times do |index|
  Event.create!(place: Faker::Lorem.sentence(3, false, 0).chop,
                city: Faker::Address.city,
                start_date: Faker::Time.between(30.days.ago, Date.today, :all),
                end_date: Faker::Time.between(30.days.ago, Date.today, :all))
end
p "Created #{Event.count} events"
User.destroy_all

10.times do |index|
  User.create!(email: Faker::Internet.email,
               password: Faker::Internet.password  )
end
p "Created #{User.count} users"

names = ["social", "ruby","rails"]
names.each {|name| Category.create!(name:name)}

User.create(email:'cata@example.com', password: 'password',admin: true)
