puts "Populating the DB"
(1..3).each do |number|
  puts "Creating a Player with a number: #{number}"
  User.create!(email: "player#{number}@example.com", password: "asdqwe123")
end

puts "Creating a Game Master"
game_master = User.create!(email: "game_master1@example.com", password: "asdqwe123", role: "game_master")

universe_description = "The Fallout world exists in an alternate timeline \
                       that diverged from the real world timeline after World War II. \
                       From this split until the Great War in 2077, \
                       a stylized representation of 1950s American culture dominated the Fallout world. \
                       The science fiction anthology, released during the in the 1950s, \
                       heavily influenced this representation."

puts "Creating a Universe for the Game Master"

universe = Universe.create!(name: "Fallout",
                            description: universe_description,
                            game_master: game_master)

puts "Creating an Adventure for the Universe"

adventure = Adventure.create!(name: "Ghoul infestaion",
                              description: "A group of feral Ghouls siege the temple of Children of Atom",
                              universe: universe)

puts "Populated the DB"
