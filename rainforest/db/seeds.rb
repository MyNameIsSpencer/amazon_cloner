# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  name: 'Millenium Falcon',
  description: 'She\'s got it where it counts',
  price_in_cents: 200
)

Product.create(
  name: 'Death Star',
  description: 'That\'s no moon',
  price_in_cents: 300
)

Product.create(
  name: 'Starkiller base',
  description: 'totes not a rehash',
  price_in_cents: 300
)
