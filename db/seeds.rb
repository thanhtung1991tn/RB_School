# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'create sample data for Room'
Room.destroy_all
100.times do
  room = Room.new name: Faker::Name.name, area: Faker::Number.between(1,100), qty: Faker::Number.between(100,1000)
  room.save validate: false
end
puts 'created sample data'

puts 'create sample data for User'
User.destroy_all
100.times do
  room = User.new name: Faker::Name.first_name, email: Faker::Internet.email, department: Faker::Name.middle_name
  room.save validate: false
end
puts 'created sample data'

puts 'create sample data for Equipment'
Equipment.destroy_all
100.times do
  room = Equipment.new name: Faker::Name.last_name, qty: Faker::Number.between(1, 10)
  room.save validate: false
end
puts 'created sample data'

puts 'create sample data for BookRoom'
BookRoom.destroy_all
100.times do
  room = BookRoom.new checkin: Time.zone.now, checkout: Time.zone.now, user_id: User.all.sample.id, room_id: Room.all.sample.id
  room.save validate: false
end
puts 'created sample data'

puts 'create sample data for EquipmentHasRoom'
EquipmentHasRoom.destroy_all
100.times do
  room = EquipmentHasRoom.new room_id: Faker::Number.between(1,100), equipment_id: Faker::Number.between(1,100), qty: Faker::Number.between(1, 10), status: Faker::Boolean.boolean
  room.save validate: false
end
puts 'created sample data'
