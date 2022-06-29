# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require 'faker'

puts 'Clearing database'
# Booking.destroy_all
Island.destroy_all
User.destroy_all

puts 'Creating users'
cass = User.create!(
    email: "cass@user.com",
    password: "password",
    password_confirmation: "password",
    first_name: "cassandra",
    last_name: "calescu"
  )
gloria = User.create!(
    email: "gloria@user.com",
    password: "password",
    password_confirmation: "password",
    first_name: "gloria",
    last_name: "calescu"
  )
zara = User.create!(
    email: "zara@user.com",
    password: "password",
    password_confirmation: "password",
    first_name: "zara",
    last_name: "elena"
  )
sy = User.create!(
    email: "sy@user.com",
    password: "password",
    password_confirmation: "password",
    first_name: "sy",
    last_name: "rashid"
  )
jack = User.create!(
    email: "jack@user.com",
    password: "password",
    password_confirmation: "password",
    first_name: "jack",
    last_name: "russell"
  )

puts 'Creating islands'
cass_island_1 = Island.create!(
    user: cass,
    name: Faker::GreekPhilosophers.name,
    price_per_night: rand(1000..10000),
    description: Faker::Lorem.sentence,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file1 = URI.open("https://source.unsplash.com/featured/?island")
  file2 = URI.open("https://source.unsplash.com/featured/?island")
  cass_island_1.photos.attach(io: file1, filename: 'cass_island_1_1.png', content_type: 'image/png')
  cass_island_1.photos.attach(io: file2, filename: 'cass_island_1_2.png', content_type: 'image/png')
cass_island_2 = Island.create!(
    user: cass,
    name: Faker::GreekPhilosophers.name,
    price_per_night: rand(1000..10000),
    description: Faker::Lorem.sentence,
    longitude: rand(144.8600..145.0000),
    latitude: rand(-37.88020..-37.75650)
  )
  file3 = URI.open("https://source.unsplash.com/featured/?island")
  file4 = URI.open("https://source.unsplash.com/featured/?island")
  cass_island_2.photos.attach(io: file3, filename: 'cass_island_1_1.png', content_type: 'image/png')
  cass_island_2.photos.attach(io: file4, filename: 'cass_island_1_2.png', content_type: 'image/png')
