# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name:'iPhone 12', stock: 10, price: 900, sku: 'AIX0120', category: Digital.first)
Product.create(name: 'Xiaomi Mi Mix 3', stock: 12, price: 400, sku: 'XMM0312', category: Digital.first)
Product.create(name: 'Xiaomi Pocophone', stock: 15, price: 300, sku: 'XPP0313', category: Digital.first)
Product.create(name: 'Samsung S10', stock: 10, price: 900, sku: 'S100901', category: Digital.first)
Product.create(name: "Zico Beach Sandal", stock: 50, price: 5, sku: "ZSD009", category: Physical.first)
Product.create(name: "Adidas Superstart", stock: 13, price: 60, sku: "ASS090",category: Physical.first)
Product.create(name: "Timberland Premium", stock: 15, price: 100, sku: "TPB132",category: Physical.first)
Product.create(name: "Men Wallet", stock: 50, price: 20, sku: "MW2323", category: Digital.first)
Product.create(name: "Keychain", stock: 60, price: 2, sku: "KC3245", category: Physical.first)
Product.create(name: "Casio L12 Watch", stock: 8, price: 50, sku: "CW7788", category: Physical.first)
