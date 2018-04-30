# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {name:"Bella", password: "pass123", email: "bella@dog.com"},
  {name:"Userman", password: "pass123", email: "user@userman"},
  {name:"Vikram", password: "pass123", email: "vik@hotguy"}
]

users = User.create!(users)

rooms = {
  {name: "Dogs"},
  {name: "Bikes"},
  {name: "Rooms"}
}


rooms = Room.create!