# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:'Amy', email:'amy@email.com' password:'pass123')
User.create(name:'Kitty', email:'kitty@email.com' password:'pass123')
User.create(name:'Jordan', email:'Jordan@email.com' password:'pass123')
User.create(name:'Sheraa', email:'power@email.com' password:'pass123')
User.create(name:'Lettuice', email:'saladfingers@email.com' password:'pass123')

Room.create(name:'Kawaii Culture')
Room.create(name:'Hello Kitty')
Room.create(name:'Small Furry Pets')
