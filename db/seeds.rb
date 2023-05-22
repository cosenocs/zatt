# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  name: 'Бабур Ибрагимжанов',
  business: 'ИП Ибрагимжанов',
  phone: '87075111011',
  role: 'business',
  email: 'babur@example.com',
  password: 'secret'
)

User.create!(
  name: 'Зафар',
  business: 'ИП Зафар',
  phone: '87751607160',
  role: 'admin',
  email: 'zafar@example.com',
  password: 'secret'
)
