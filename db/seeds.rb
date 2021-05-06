# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create(name: "George R.R. Martin")
Author.create(name: "Agatha Christie")

Book.create(name: "A Song of Ice and Fire", genre: "fantasy", published: 1996, author_id: 1)
Book.create(name: "And Then There Were None", genre: "mystery", published: 1940, author_id: 2)