# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
99.times do |n|
  name  = Faker::Name.name
  teamId = "example-#{n+1}@railstutorial.org"
  position = "GW"
  playChance = 100
    
  Player.create!(name:  name,
               teamId: teamId,
               position: position,
               playChance: playChance,
               )
end
