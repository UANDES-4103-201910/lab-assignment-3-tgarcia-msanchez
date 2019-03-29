# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |i|
  User.create(name: "User ##{i}", last_name: "last#{i}", email: "email#{i}@.com", phone:"#{i}", password: "#{i}")
end

3.times do |i|
  EventInformation.create(name: "Event ##{i}", description: "Desc#{i}", start_date: DateTime.now())
end

3.times do |i|
  EventVenue.create(name: "Venue ##{i}", adress: "Adress#{i}", capacity: 100)
end



