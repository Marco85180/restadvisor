# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  Resto.create({name:Faker::Company.name, description:Faker::Lorem.sentence, picture_url:"http://www.firstluxe.com/wp-content/uploads/2012/10/maldives-2.jpeg" })
end
