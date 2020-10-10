puts "Populating the DB"
(1..3).each do |number|
  puts "Creating a Player with a number: #{number}"
  User.create!(email: "player#{number}@example.com", password: "asdqwe123")
end

puts "Creating a Game Master"
User.create!(email: "game_master1@example.com", password: "asdqwe123", role: "game_master")

puts "Populated the DB"
