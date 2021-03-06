# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#

Artist.destroy_all
Song.destroy_all

artist1 = Artist.create!(name: Faker::BossaNova.artist, image_url: open("http://res.cloudinary.com/nothingbuttrouble/image/upload/v1504960621/bossa_nova.jpg.jpg"))
artist2 = Artist.create!(name: Faker::BossaNova.artist, image_url: open("http://res.cloudinary.com/nothingbuttrouble/image/upload/v1504960621/bossa_nova.jpg.jpg"))

Song.create!(name: Faker::BossaNova.song, artist: artist1)
Song.create!(name: Faker::BossaNova.song, artist: artist1)
Song.create!(name: Faker::BossaNova.song, artist: artist1)
Song.create!(name: Faker::BossaNova.song, artist: artist1)
Song.create!(name: Faker::BossaNova.song, artist: artist1)

Song.create!(name: Faker::BossaNova.song, artist: artist2)
Song.create!(name: Faker::BossaNova.song, artist: artist2)
Song.create!(name: Faker::BossaNova.song, artist: artist2)
Song.create!(name: Faker::BossaNova.song, artist: artist2)
Song.create!(name: Faker::BossaNova.song, artist: artist2)
