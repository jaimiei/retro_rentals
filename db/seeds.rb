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

burnout_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/burnout-3_xckn0i.jpg")
burnout = VideoGame.new(title: "Burnout 3 Takedown", console: "Cross-platform", genre: "Racing")
burnout.photo.attach(io: burnout_cover, filename: "burnout-3_xckn0i", content_type: "image/jpg")
burnout.save

cod_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045289/cod_cuyn5b.jpg")
cod = VideoGame.new(title: "Call of Duty 4: Modern Warfare", console: "Cross-platform", genre: "Shooter")
cod.photo.attach(io: cod_cover, filename: "cod_cuyn5b", content_type: "image/jpg")
cod.save

crash_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/crash_dkhbhg.webp")
crash = VideoGame.new(title: "Crash Bandicoot", console: "Playstation", genre: "Platformer")
crash.photo.attach(io: crash_cover, filename: "crash_dkhbhg", content_type: "image/webp")
crash.save

dk_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/donkey-kong_gbdwvz.jpg")
dk = VideoGame.new(title: "Donkey Kong Country", console: "Nintendo", genre: "Platfromer")
dk.photo.attach(io: dk_cover, filename: "donkey-kong_gbdwvz", content_type: "image/jpg")
dk.save

goldeneye_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/goldeneye_f0z2of.webp")
goldeneye = VideoGame.new(title: "Goldeneye 007", console: "Nintendo", genre: "Shooter")
goldeneye.photo.attach(io: goldeneye_cover, filename: "goldeneye_f0z2of", content_type: "image/webp")
goldeneye.save

gta_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045290/gta_d3gmul.webp")
gta = VideoGame.new(title: "Grand Theft Auto: Vice City", console: "Playstation", genre: "Action")
gta.photo.attach(io: gta_cover, filename: "gta_d3gmul", content_type: "image/webp")
gta.save

half_life_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/half-life-2_oviixy.jpg")
half_life = VideoGame.new(title: "Half-Life 2", console: "PC", genre: "Shooter")
half_life.photo.attach(io: half_life_cover, filename: "half-life-2_oviixy", content_type: "image/jpg")
half_life.save

halo_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/Halo_o1qimv.jpg")
halo = VideoGame.new(title: "Halo", console: "Xbox", genre: "Shooter")
halo.photo.attach(io: halo_cover, filename: "Halo_o1qimv", content_type: "image/jpg")
halo.save

zelda_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045289/Zelda_hwzt09.webp")
zelda = VideoGame.new(title: "Legend of Zelda: Ocarina of Time", console: "Nintendo", genre: "RPG")
zelda.photo.attach(io: zelda_cover, filename: "Zelda_hwzt09", content_type: "image/webp")
zelda.save

mario_kart_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/mario-kart_adeo1t.jpg")
mario_kart = VideoGame.new(title: "Mario Kart 64", console: "Nintendo", genre: "Racing")
mario_kart.photo.attach(io: mario_kart_cover, filename: "mario-kart_adeo1t", content_type: "image/jpg")
mario_kart.save

mgs_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045290/mgs_tyqflm.jpg")
mgs = VideoGame.new(title: "Metal Gear Solid", console: "Playstation", genre: "Action")
mgs.photo.attach(io: mgs_cover, filename: "mgs_tyqflm", content_type: "image/jpg")
mgs.save

perfect_dark_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/perfect-dark_lva2g5.jpg")
perfect_dark = VideoGame.new(title: "Perfect Dark", console: "Nintendo", genre: "Shooter")
perfect_dark.photo.attach(io: perfect_dark_cover, filename: "perfect-dark_lva2g5", content_type: "image/jpg")
perfect_dark.save

pokemon_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/pokemon_mwt39l.png")
pokemon = VideoGame.new(title: "Pokemon Red Version", console: "Nintendo", genre: "RPG")
pokemon.photo.attach(io: pokemon_cover, filename: "pokemon_mwt39l", content_type: "image/png")
pokemon.save

re4_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/re4_gzltdv.jpg")
re4 = VideoGame.new(title: "Resident Evil 4", console: "Playstation", genre: "Horror")
re4.photo.attach(io: re4_cover, filename: "re4_gzltdv", content_type: "image/jpg")
re4.save

colossus_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/colossus_fzselv.jpg")
colossus = VideoGame.new(title: "Shadow of the Colossus", console: "Playstation", genre: "Action")
colossus.photo.attach(io: colossus_cover, filename: "colossus_fzselv", content_type: "image/jpg")
colossus.save

sonic_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/sonic-box-art_agegt2.jpg")
sonic = VideoGame.new(title: "Sonic the Hedgehog", console: "Sega", genre: "Platformer")
sonic.photo.attach(io: sonic_cover, filename: "sonic-box-art_agegt2", content_type: "image/jpg")
sonic.save

ssx_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/ssx_bm4ozp.jpg")
ssx = VideoGame.new(title: "SSX Tricky", console: "Playstation", genre: "Sports")
ssx.photo.attach(io: ssx_cover, filename: "ssx_bm4ozp", content_type: "image/jpg")
ssx.save

mario_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/mario_xn89oa.jpg")
mario = VideoGame.new(title: "Super Mario 64", console: "Nintendo", genre: "Platformer")
mario.photo.attach(io: mario_cover, filename: "mario_xn89oa", content_type: "image/jpg")
mario.save

tetris_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/tetris_uyiou8.jpg")
tetris = VideoGame.new(title: "Tetris", console: "Nintendo", genre: "Puzzle")
tetris.photo.attach(io: tetris_cover, filename: "tetris_uyiou8", content_type: "image/jpg")
tetris.save

timesplitters_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/timesplitters-2_mp5vr2.jpg")
timesplitters = VideoGame.new(title: "Timesplitters 2", console: "Playstation", genre: "Shooter")
timesplitters.photo.attach(io: timesplitters_cover, filename: "timesplitters_xn89oa", content_type: "image/jpg")
timesplitters.save

tomb_raider_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479163/tomb-raider-1_rzren8.png")
tomb_raider = VideoGame.new(title: "Tomb Raider", console: "Playstation", genre: "Action")
tomb_raider.photo.attach(io: tomb_raider_cover, filename: "tomb-raider-1_rzren8", content_type: "image/png")
tomb_raider.save

puts "Finished!"
