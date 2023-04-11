# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts "Creando Usuarios..."

matias = User.create!(
  email: "mcox5@uc.cl",
  password: "123456",
)

pedro = User.create!(
  email: "pedro@uc.cl",
  password: "123456",
)

puts "Creando Clientes..."
20.times do
  Client.create!(
    name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    phone: Faker::PhoneNumber.phone_number
  )
end
puts "Creando Ventas..."

100.times do
  Sale.create!(
    client_id: rand(1..20), # Asociar a un cliente aleatorio
    date: Faker::Date.between(from: 1.year.ago, to: Date.today),
    status: rand(0..3)
  )
end

puts "Creando Categorías"

category_names = ["Classic", "Reserva", "Gran Reserva", "360", "Marea", "LFE900 Blend", "LFE900 Malbec", "Doña Bernarda", "Pater"]
category_names.each do |category|
  Category.create!(
    name: category
  )
end

puts "Creando Proveedores"
1.times do
  Supplier.create!(
    name: "Lorena Moran",
    email: "lorena.moran@lfewines.com"
  )
end

puts "Creando Productos"
cepas = ["Cabernet Sauvinoh", "Merlot", "Carmenere", "Shiraz", "Malbec", "Pinot Noir", "Chardonnay", "Sauvinoh Blanc", "Rose"]
# Linea classic
category_counter = 0
category_names.first(3).each do |category|
  cepas.each do |cepa|
    Product.create!(
      category_id: category_counter + 1,
      supplier_id: 1,
      name: cepa,
      price: 4500
    )
  end
end


puts "Creando Ventas de productos"
10.times do
  SalesProduct.create!(
    product_id: rand(1..Product.count),
    sale_id: rand(1..Sale.count),
    quantity: rand(6..12)
  )
end
