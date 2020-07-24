# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "shanuthakur667@gmail.com", password: "password", password_confirmation: "password")
Product.create(name: "Nikon D850", description: "nice product comapny nikon", price: 20000, make: 2019)
