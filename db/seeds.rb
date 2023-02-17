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
burnout = VideoGame.new(
  title: "Burnout 3 Takedown",
  console: "Cross-platform",
  genre: "Racing",
  year: "2004",
  price: "3.99",
  publisher: "EA Games",
  summary: "Burnout 3: Takedown is a racing video game with arcade-style gameplay that emphasises dangerous
  and fast-paced driving. The game features standard circuit races which take place on carriageways
  and city streets populated with traffic."
)
burnout.photo.attach(io: burnout_cover, filename: "burnout-3_xckn0i", content_type: "image/jpg")
burnout.save

cod_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045289/cod_cuyn5b.jpg")
cod = VideoGame.new(
  title: "Call of Duty 4: Modern Warfare",
  console: "Cross-platform",
  genre: "Shooter",
  year: "2007",
  price: "2.99",
  publisher: "Activision",
  summary: "Call of Duty 4: Modern Warfare is a 2007 first-person shooter video game published by Activision.
   It is the fourth main installment in the Call of Duty series. The game breaks away from the World War II
    setting of previous entries and is instead set in modern times."
)
cod.photo.attach(io: cod_cover, filename: "cod_cuyn5b", content_type: "image/jpg")
cod.save

crash_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/crash_dkhbhg.webp")
crash = VideoGame.new(
  title: "Crash Bandicoot",
  console: "Playstation 1",
  genre: "Platformer",
  year: "1996",
  price: "4.99",
  publisher: "Sony Computer Entertainment",
  summary: "The game's premise chronicles the creation of the titular Crash, a bandicoot who has been
   uplifted by the mad scientist Doctor Neo Cortex. The story follows Crash as he aims to prevent Cortex's
    plans for world domination and rescue his girlfriend Tawna, a female bandicoot also created by Cortex."
)
crash.photo.attach(io: crash_cover, filename: "crash_dkhbhg", content_type: "image/webp")
crash.save

dk_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/donkey-kong_gbdwvz.jpg")
dk = VideoGame.new(
  title: "Donkey Kong Country",
  console: "Super Nintendo Entertainment System",
  genre: "Platfromer",
  year: "1994",
  price: "4.99",
  publisher: "Nintendo",
  summary: "It is a reboot of Nintendo's Donkey Kong franchise and follows the gorilla Donkey Kong and his
   nephew Diddy Kong as they set out to recover their stolen banana hoard from the crocodile King K. Rool
    and his army, the Kremlings."
)
dk.photo.attach(io: dk_cover, filename: "donkey-kong_gbdwvz", content_type: "image/jpg")
dk.save

doom_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676582449/Doom_qt3jyk.webp")
doom = VideoGame.new(
  title: "Doom",
  console: "PC",
  genre: "Shooter",
  year: "1993",
  price: "4.99",
  publisher: "id Software",
  summary: "Players assume the role of a space marine, popularly known as Doomguy, fighting their way
   through hordes of invading demons from hell."
)
doom.photo.attach(io: doom_cover, filename: "Doom_qt3jyk", content_type: "image/webp")
doom.save

goldeneye_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/goldeneye_f0z2of.webp")
goldeneye = VideoGame.new(
  title: "Goldeneye 007",
  console: "Nintendo 64",
  genre: "Shooter",
  year: "1997",
  price: "4.99",
  publisher: "Nintendo",
  summary: "Based on the 1995 James Bond film GoldenEye, the player controls the secret agent James Bond to prevent
   a criminal syndicate from using a satellite weapon. They navigate a series of levels to complete objectives,
    such as recovering or destroying objects, while shooting enemies."
)
goldeneye.photo.attach(io: goldeneye_cover, filename: "goldeneye_f0z2of", content_type: "image/webp")
goldeneye.save

gta_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045290/gta_d3gmul.webp")
gta = VideoGame.new(
  title: "Grand Theft Auto: Vice City",
  console: "Cross-platform",
  genre: "Action",
  year: "2002",
  price: "3.99",
  publisher: "Rockstar Games",
  summary: "Set in 1986 within the fictional Vice City (based on Miami and Miami Beach), the
   single-player story follows mobster Tommy Vercetti's rise to power after being released from
    prison and becoming caught up in an ambushed drug deal. While seeking out those responsible,
     he slowly builds a criminal empire by seizing power from other criminal organisations in the city."
)
gta.photo.attach(io: gta_cover, filename: "gta_d3gmul", content_type: "image/webp")
gta.save

half_life_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/half-life-2_oviixy.jpg")
half_life = VideoGame.new(
  title: "Half-Life 2",
  console: "PC",
  genre: "Shooter",
  year: "2004",
  price: "4.99",
  publisher: "Valve",
  summary: "Players control Gordon Freeman as he joins a resistance movement to liberate the Earth from the
   control of an alien empire, the Combine."
)
half_life.photo.attach(io: half_life_cover, filename: "half-life-2_oviixy", content_type: "image/jpg")
half_life.save

halo_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/Halo_o1qimv.jpg")
halo = VideoGame.new(
  title: "Halo: Combat Evolved",
  console: "Xbox",
  genre: "Shooter",
  year: "2001",
  publisher: "Microsoft Game Studios",
  summary: "Halo is set in the twenty-sixth century, with the player assuming the role of the Master
   Chief, a cybernetically enhanced supersoldier. Players battle aliens as they attempt to uncover
    the secrets of the eponymous Halo, a ring-shaped artificial world."
)
halo.photo.attach(io: halo_cover, filename: "Halo_o1qimv", content_type: "image/jpg")
halo.save

zelda_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045289/Zelda_hwzt09.webp")
zelda = VideoGame.new(
  title: "Legend of Zelda: Ocarina of Time",
  console: "Nintendo 64",
  genre: "RPG",
  year: "1998",
  price: "4.99",
  publisher: "Nintendo",
  summary: "The player controls Link in the fantasy land of Hyrule on a quest to stop the evil king
   Ganondorf, by traveling through time and navigating dungeons and an overworld."
)
zelda.photo.attach(io: zelda_cover, filename: "Zelda_hwzt09", content_type: "image/webp")
zelda.save

mario_kart_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/mario-kart_adeo1t.jpg")
mario_kart = VideoGame.new(
  title: "Mario Kart 64",
  console: "Nintendo 64",
  genre: "Racing",
  year: "1996",
  price: "4.99",
  publisher: "Nintendo",
  summary: "Players take control of one of eight characters from the Mario franchise, who race around 16 tracks
   (4 in each of 4 cups) with items that can either harm opponents or aid the user."
)
mario_kart.photo.attach(io: mario_kart_cover, filename: "mario-kart_adeo1t", content_type: "image/jpg")
mario_kart.save

mgs_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676045290/mgs_tyqflm.jpg")
mgs = VideoGame.new(
  title: "Metal Gear Solid",
  console: "Playstation 1",
  genre: "Action",
  year: "1998",
  price: "4.99",
  publisher: "Konami",
  summary: "Players control Solid Snake, a soldier who infiltrates a nuclear weapons facility to
   neutralize the terrorist threat from FOXHOUND, a renegade special forces unit. Snake must
    liberate hostages and stop the terrorists from launching a nuclear strike."
)
mgs.photo.attach(io: mgs_cover, filename: "mgs_tyqflm", content_type: "image/jpg")
mgs.save

metroid_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676583270/metroid_ufgwvf.webp")
metroid = VideoGame.new(
  title: "Metroid",
  console: "Nintendo Entertainment System",
  genre: "Action",
  year: "1987",
  price: "4.99",
  publisher: "Nintendo",
  summary: "Set on the planet Zebes, the story follows Samus Aran as she attempts to retrieve the parasitic
   Metroid organisms that were stolen by Space Pirates, who plan to replicate the Metroids by exposing them
    to beta rays and then use them as biological weapons to destroy Samus and all who oppose them."
)
metroid.photo.attach(io: metroid_cover, filename: "metroid_ufgwvf", content_type: "image/webp")
metroid.save

outrun_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676580943/outrun_vu4ptw.jpg")
outrun = VideoGame.new(
  title: "Out Run",
  console: "Sega Mega Drive",
  genre: "Racing",
  year: "1986",
  price: "4.99",
  publisher: "Sega",
  summary: "Out Run is a 3D driving video game in which the player controls a Ferrari Testarossa Spider
   from a third-person rear perspective. The object of the game is to reach the finish line against a timer."
)
outrun.photo.attach(io: outrun_cover, filename: "outrun_vu4ptw", content_type: "image/jpg")
outrun.save

pacman_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676581521/pacman_fqmgze.jpg")
pacman = VideoGame.new(
  title: "Pac-man",
  console: "Cross-platform",
  genre: "Maze",
  year: "1980",
  price: "4.99",
  publisher: "Namco",
  summary: "Pac-Man is an action maze chase video game; the player controls the eponymous character
   through an enclosed maze. The objective of the game is to eat all of the dots placed in the maze while
    avoiding four colored ghosts — Blinky (red), Pinky (pink), Inky (cyan), and Clyde (orange) — that pursue Pac-Man."
)
pacman.photo.attach(io: pacman_cover, filename: "pacman_fqmgze", content_type: "image/jpg")
pacman.save

perfect_dark_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479160/perfect-dark_lva2g5.jpg")
perfect_dark = VideoGame.new(
  title: "Perfect Dark",
  console: "Nintendo 64",
  genre: "Shooter",
  year: "2000",
  price: "3.99",
  publisher: "Rare",
  summary: "The first game of the Perfect Dark series, it follows Joanna Dark, an agent of the Carrington Institute
   research centre, as she attempts to stop an extraterrestrial conspiracy by rival corporation dataDyne."
)
perfect_dark.photo.attach(io: perfect_dark_cover, filename: "perfect-dark_lva2g5", content_type: "image/jpg")
perfect_dark.save

pokemon_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/pokemon_mwt39l.png")
pokemon = VideoGame.new(
  title: "Pokemon Red Version",
  console: "Game Boy",
  genre: "RPG",
  year: "1998",
  price: "4.99",
  publisher: "Nintendo",
  summary: "The player controls the protagonist from an overhead perspective and navigates him throughout
   the fictional region of Kanto in a quest to master Pokémon battling."
)
pokemon.photo.attach(io: pokemon_cover, filename: "pokemon_mwt39l", content_type: "image/png")
pokemon.save

re4_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/re4_gzltdv.jpg")
re4 = VideoGame.new(
  title: "Resident Evil 4",
  console: "Cross-platform",
  genre: "Horror",
  year: "2005",
  price: "2.99",
  publisher: "Capcom",
  summary: "Players control U.S. government special agent Leon S. Kennedy, who is sent on a mission to rescue the U.S.
   president's daughter Ashley Graham, who has been kidnapped by a cult. In rural Spain, Leon fights hordes of enemies
    infected by a mind-controlling parasite"
)
re4.photo.attach(io: re4_cover, filename: "re4_gzltdv", content_type: "image/jpg")
re4.save

colossus_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/colossus_fzselv.jpg")
colossus = VideoGame.new(
  title: "Shadow of the Colossus",
  console: "Playstation 2",
  genre: "Action",
  year: "2005",
  price: "3.99",
  publisher: "Sony Computer Entertainment",
  summary: "The player assumes the role of Wander as he embarks on a mission that might entail Mono's resurrection:
   to locate and destroy the colossi, sixteen massive beings spread across the forbidden land, which the protagonist
    traverses by horseback and on foot."
)
colossus.photo.attach(io: colossus_cover, filename: "colossus_fzselv", content_type: "image/jpg")
colossus.save

sim_city_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676582785/simcity_pf0vqj.jpg")
sim_city = VideoGame.new(
  title: "SimCity 2000",
  console: "PC",
  genre: "City-building",
  year: "1993",
  price: "3.99",
  publisher: "Maxis",
  summary: "The objective of the game is to create a city, develop residential and industrial areas, build
   infrastructure and collect taxes for further development of the city."
)
sim_city.photo.attach(io: sim_city_cover, filename: "simcity_pf0vqj", content_type: "image/jpeg")
sim_city.save

sonic_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/sonic-box-art_agegt2.jpg")
sonic = VideoGame.new(
  title: "Sonic the Hedgehog",
  console: "Sega Genesis",
  genre: "Platformer",
  year: "1991",
  price: "4.99",
  publisher: "Sega",
  summary: "Players control Sonic the Hedgehog, who can run at supersonic speeds; Sonic sets out on a quest to
   defeat Dr. Robotnik, a scientist who has imprisoned animals in robots and seeks the powerful Chaos Emeralds."
)
sonic.photo.attach(io: sonic_cover, filename: "sonic-box-art_agegt2", content_type: "image/jpg")
sonic.save

ssx_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/ssx_bm4ozp.jpg")
ssx = VideoGame.new(
  title: "SSX Tricky",
  console: "Cross-platform",
  genre: "Sports",
  year: "2001",
  price: "3.99",
  publisher: "EA Sports BIG",
  summary: "SSX Tricky is a snowboarding video game. In SSX Tricky, players can choose among twelve characters,
   participate in races or trick competitions, and earn rewards."
)
ssx.photo.attach(io: ssx_cover, filename: "ssx_bm4ozp", content_type: "image/jpg")
ssx.save

streets_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676582138/streets_ylakbs.webp")
streets = VideoGame.new(
  title: "Streets of Rage 2",
  console: "Sega Mega Drive",
  genre: "Fighting",
  year: "1992",
  price: "4.99",
  publisher: "Sega",
  summary: "Streets of Rage 2 is a side-scrolling beat-em-up in which one or two players fight against waves of
   enemies while picking up weapons and items along the way. "
)
streets.photo.attach(io: streets_cover, filename: "streets_ylakbs", content_type: "image/webp")
streets.save

mario_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676111399/mario_xn89oa.jpg")
mario = VideoGame.new(
  title: "Super Mario 64",
  console: "Nintendo 64",
  genre: "Platformer",
  year: "1996",
  price: "4.99",
  publisher: "Nintendo",
  summary: "Bowser, invades Princess Peach's castle and hides the castle's sources of protection, the
   Power Stars, in many different worlds inside magical paintings. As Mario, the player collects Power Stars to
    unlock enough of Princess Peach's castle to get to Bowser and rescue Princess Peach."
)
mario.photo.attach(io: mario_cover, filename: "mario_xn89oa", content_type: "image/jpg")
mario.save

tetris_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/tetris_uyiou8.jpg")
tetris = VideoGame.new(
  title: "Tetris",
  console: "Game Boy",
  genre: "Puzzle",
  year: "1984",
  price: "4.99",
  publisher: "Nintendo",
  summary: "In Tetris, players complete lines by moving differently shaped pieces (tetrominoes), which descend onto the
   playing field. The completed lines disappear and grant the player points, and the player can proceed to fill the
    vacated spaces. The game ends when the uncleared lines reach the top of the playing field. The longer the player
     can delay this outcome, the higher their score will be. "
)
tetris.photo.attach(io: tetris_cover, filename: "tetris_uyiou8", content_type: "image/jpg")
tetris.save

timesplitters_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/timesplitters-2_mp5vr2.jpg")
timesplitters = VideoGame.new(
  title: "Timesplitters 2",
  console: "Cross-platform",
  genre: "Shooter",
  year: "2002",
  price: "3.99",
  publisher: "Eidos Interactive",
  summary: "The game features a story mode consisting of ten levels in which the player assumes the role of one of two
   space marines as they attempt to stop the alien race of TimeSplitters from ruining history by collecting the time
    crystals in various time periods, ranging from the Wild West to the 25th century."
)
timesplitters.photo.attach(io: timesplitters_cover, filename: "timesplitters_xn89oa", content_type: "image/jpg")
timesplitters.save

tomb_raider_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479163/tomb-raider-1_rzren8.png")
tomb_raider = VideoGame.new(
  title: "Tomb Raider",
  console: "Playstation 1",
  genre: "Action",
  year: "1996",
  price: "4.99",
  publisher: "Eidos Interactive",
  summary: "The game follows archaeologist-adventurer Lara Croft, who is hired by businesswoman Jacqueline Natla to
   find an artefact called the Scion of Atlantis. Gameplay features Lara navigating levels split into multiple areas
    and room complexes while fighting enemies and solving puzzles to progress."
)
tomb_raider.photo.attach(io: tomb_raider_cover, filename: "tomb-raider-1_rzren8", content_type: "image/png")
tomb_raider.save

tony_hawk_cover = URI.open("https://res.cloudinary.com/doaf60lu6/image/upload/v1676479161/tony-hawk_qty2ny.jpg")
tony_hawk = VideoGame.new(
  title: "Tony Hawk's Pro Skater 2",
  console: "Cross-platform",
  genre: "Sports",
  year: "2000",
  price: "3.99",
  publisher: "Activision",
  summary: "The player takes control of a variety of skateboarders and either performs skateboarding tricks or
   collects certain objects."
)
tony_hawk.photo.attach(io: tony_hawk_cover, filename: "tony-hawk_qty2ny", content_type: "image/jpg")
tony_hawk.save

puts "Finished!"
