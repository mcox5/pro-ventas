# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creando Usuarios..."

matias = User.create!(
  email: "mcox5@uc.cl",
  password: "123456",
  username: "Matias"
)

pedro = User.create!(
  email: "pedro@uc.cl",
  password: "123456",
  username: "Pedro"
)

puts "Creando Clientes..."

