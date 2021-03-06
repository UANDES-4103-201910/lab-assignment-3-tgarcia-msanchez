# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |i|
  e1 = EventVenue.create(name: "Venue ##{i}", adress: "Adress#{i}", capacity: 100)
  e2 = EventInformation.create(name: "Event ##{i}", description: "Desc#{i}", start_date: DateTime.now(), Event_venue_id: e1.id )
  3.times do |j|
  	TicketInformation.create(event_information_id: e2.id, price: 1000 + j, category: "#{j}")	
  end
end

5.times do |i|
  u1 = User.create(name: "User ##{i}", last_name: "last#{i}", email: "email#{i}@.com", phone:"#{i}", password: "#{i}")

  3.times do |j|
  	t0 = TicketInformation.find(j + 1)
  	t1 = TicketOrder.create(Ticket_information_id: t0.id , amount: t0.price , User_id: u1.id)

  end
end
