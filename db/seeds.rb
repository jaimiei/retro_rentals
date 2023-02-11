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
mgs = VideoGame.new(title: "Metal Gear Solid", console: "Playstation", genre: "Action")
mgs.photo.attach(io: mgs_cover, filename: "mgs_tyqflm", content_type: "image/jpg")
mgs.save

gta_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045290/gta_d3gmul.webp")
gta = VideoGame.new(title: "Grand Theft Auto: Vice City", console: "Playstation", genre: "Action")
gta.photo.attach(io: gta_cover, filename: "gta_d3gmul", content_type: "image/WebP")
gta.save

cod_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045289/cod_cuyn5b.jpg")
cod = VideoGame.new(title: "Call of Duty 4: Modern Warfare", console: "Cross-platform", genre: "Shooter")
cod.photo.attach(io: cod_cover, filename: "cod_cuyn5b", content_type: "image/jpg")
cod.save

zelda_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045289/Zelda_hwzt09.webp")
zelda = VideoGame.new(title: "Legend of Zelda: Ocarina of Time", console: "Nintendo", genre: "RPG")
zelda.photo.attach(io: zelda_cover, filename: "Zelda_hwzt09", content_type: "image/WebP")
zelda.save


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
