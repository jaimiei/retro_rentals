# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: "Star Wars" }, { title: "Lord of the Rings" }])
#   Character.create(title: "Luke", movie: movies.first)

require "open-uri"

puts "Cleaning database..."
VideoGame.destroy_all

puts "Creating video games..."

mgs_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045290/mgs_tyqflm.jpg")
mgs = VideoGame.new(
  title: "Metal Gear Solid",
  console: "Playstation",
  genre: "Action")
  # summary: "Players control Solid Snake, a soldier who infiltrates a nuclear weapons facility to
  #  neutralize the terrorist threat from FOXHOUND, a renegade special forces unit.[7] Snake must
  #   liberate hostages and stop the terrorists from launching a nuclear strike.")
mgs.photo.attach(io: mgs_cover, filename: "mgs_tyqflm", content_type: "image/jpg")
mgs.save

gta_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045290/gta_d3gmul.webp")
gta = VideoGame.new(title: "Grand Theft Auto: Vice City", console: "Playstation", genre: "Action")
gta.photo.attach(io: gta_cover, filename: "gta_d3gmul", content_type: "image/webp")
gta.save

cod_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045289/cod_cuyn5b.jpg")
cod = VideoGame.new(title: "Call of Duty 4: Modern Warfare", console: "Cross-platform", genre: "Shooter")
cod.photo.attach(io: cod_cover, filename: "cod_cuyn5b", content_type: "image/jpg")
cod.save

zelda_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045289/Zelda_hwzt09.webp")
zelda = VideoGame.new(title: "Legend of Zelda: Ocarina of Time", console: "Nintendo", genre: "RPG")
zelda.photo.attach(io: zelda_cover, filename: "Zelda_hwzt09", content_type: "image/webp")
zelda.save

colossus_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/colossus_fzselv.jpg")
colossus = VideoGame.new(title: "Shadow of the Colossus", console: "Playstation", genre: "Action")
colossus.photo.attach(io: colossus_cover, filename: "colossus_fzselv", content_type: "image/jpg")
colossus.save

crash_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/crash_dkhbhg.webp")
crash = VideoGame.new(
  title: "Crash Bandicoot",
  console: "Playstation",
  genre: "Platformer")
  # summary: "The game's premise chronicles the creation of the titular Crash, a bandicoot who has been uplifted
  # by the mad scientist Doctor Neo Cortex."
crash.photo.attach(io: crash_cover, filename: "crash_dkhbhg", content_type: "image/webp")
crash.save

goldeneye_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/goldeneye_f0z2of.webp")
goldeneye = VideoGame.new(
  title: "Goldeneye 007",
  console: "Nintendo",
  genre: "Shooter")
  # summary: "Based on the 1995 James Bond film GoldenEye, the player controls the secret agent James Bond to prevent
  # a criminal syndicate from using a satellite weapon."
goldeneye.photo.attach(io: goldeneye_cover, filename: "goldeneye_f0z2of", content_type: "image/webp")
goldeneye.save

pokemon_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/pokemon_mwt39l.png")
pokemon = VideoGame.new(title: "Pokemon Red Version", console: "Nintendo", genre: "RPG")
pokemon.photo.attach(io: pokemon_cover, filename: "pokemon_mwt39l", content_type: "image/png")
pokemon.save

mario_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/mario_xn89oa.jpg")
mario = VideoGame.new(title: "Super Mario 64", console: "Nintendo", genre: "Platformer")
mario.photo.attach(io: mario_cover, filename: "mario_xn89oa", content_type: "image/jpg")
mario.save

User.create!(email: "test@retro.com", password: "retrotest")

# cod = { title: "Call of Duty 4: Modern Warfare", console: "Cross-platform", genre: "Shooter" }
# zelda = { title: "Legend of Zelda: Ocarina of Time", console: "Nintendo", genre: "RPG" }
# sonic = { title: "Sonic the Hedgehog", console: "Sega", genre: "Platformer" }
# goldeneye = { title: "Goldeneye 007", console: "Nintendo", genre: "Shooter" }
# tomb_raider = { title: "Tomb Raider", console: "Playstation", genre: "Action" }
# crash = { title: "Crash Bandicoot", console: "Playstation", genre: "Platformer" }
# mario = { title: "Super Mario 64", console: "Nintendo", genre: "Platformer" }
# pokemon = { title: "Pokemon Red Version", console: "Nintendo", genre: "RPG" }
# colossus = { title: "Shadow of the Colossus", console: "Playstation", genre: "Action" }
# halo = { title: "Halo 3", console: "Xbox", genre: "Shooter" }


# [mgs, gta].each do |attributes|
#   video_game = VideoGame.create!(attributes)
#   puts "Created #{video_game.title}"
# end

# [mgs, gta, cod, zelda, sonic, goldeneye, tomb_raider, crash, mario, pokemon, colossus, halo].each do |attributes|
#   video_game = VideoGame.create!(attributes)
#   puts "Created #{video_game.title}"
# end

puts "Finished!"
