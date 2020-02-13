# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Gossip.destroy_all
User.destroy_all
Comment.destroy_all
City.destroy_all
Like.destroy_all
Like
3.times do
  City.create(name: Faker::Address.city)
end
10.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: rand(18..30), city: City.all.sample, email: Faker::Internet.email, password: "a" )
end
20.times do
  Gossip.create(user: User.all.sample, content: Faker::Lorem.sentence(word_count: rand(2..10)), title: Faker::Lorem.sentence(word_count: rand(1..4)))
end
Gossip.all.each do |gossip|
  rand(1..5).times do
    Comment.create(content: Faker::Lorem.sentence(word_count: rand(2..10)), user: User.all.sample, gossip: gossip)
  end
end