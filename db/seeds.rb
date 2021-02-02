# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.delete_all

10.times do

  dogname = Faker::Creature::Dog.name
  dogsound = Faker::Creature::Dog.sound
  dogsize = Faker::Creature::Dog.size

  doggy = Dog.create!(name: dogname, sound: dogsound, size: dogsize)
end