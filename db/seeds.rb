# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: "Star Wars" }, { title: "Lord of the Rings" }])
#   Character.create(title: "Luke", movie: movies.first)

puts "Cleaning database..."
VideoGame.destroy_all

puts "Creating video games..."
mgs = { title: "Metal Gear Solid", console: "playstation", genre: "action" }
gta = { title: "GTA: Vice City", console: "playstation", genre: "action" }
cod = { title: "Call of Duty: Modern Warfare", console: "Cross-platform", genre: "shooter" }
zelda = { title: "Legend of Zelda: Breath of the Wild", console: "Nintendo", genre: "RPG" }

[mgs, gta, cod, zelda].each do |attributes|
  video_game = VideoGame.create!(attributes)
  puts "Created #{video_game.title}"
end

puts "Creating users..."
jaimie = { first_name: "Jaimie", last_name: "Irvine", username: "jaimiei", email: "jaimie@retro.com", password: "123456", password_confirmation: "123456", is_admin: true, is_moderator: true }
isk = { first_name: "Iskander", last_name: "Hughes", username: "IskHub", email: "isk@retro.com", password: "123456", password_confirmation: "123456", is_admin: true, is_moderator: true }
chris = { first_name: "Chris", last_name: "Moore", username: "cm11jun", email: "chris@retro.com", password: "123456", password_confirmation: "123456", is_admin: true, is_moderator: true }
raj = { first_name: "Raj", last_name: "Singh", username: "vox", email: "raj@retro.com", password: "123456", password_confirmation: "123456", is_admin: true, is_moderator: true }

[jaimie, isk, chris, raj].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.username}"
end

puts "Finished!"
