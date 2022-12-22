# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User1 = User.create!(email: 'abubakarkhalid637@gmail.com', full_name: 'Rachel Warbelow', password: 'password',
                     password_confirmation: 'password', phone: '03216534771', address: 'Lahore', role: 'user')
User2 = User.create!(email: 'demo+jeff@jumpstartlab.com', full_name: 'Jeff Casimir', display_name: 'j3',
                     password: 'password', password_confirmation: 'password', phone: '03336534771',
                     address: 'Faisalabad', role: 'user')
User3 = User.create!(email: 'demo+jorge@jumpstartlab.com', full_name: 'Jorge Tellez', display_name: 'novohispano',
                     password: 'password', password_confirmation: 'password', phone: '03416534573',
                     address: 'Islamabad', role: 'user')
User4 = User.create!(email: 'muhammad.abubakar@devsinc.com', full_name: 'Josh Cheek', display_name: 'josh',
                     password: 'password', password_confirmation: 'password', phone: '03416533576',
                     address: 'Karachi', role: 'admin')

Restaurant1 = Restaurant.create!(name: 'Restaurant1', description: 'Description 1')
Restaurant2 = Restaurant.create!(name: 'Restaurant2', description: 'Description 2')
Restaurant3 = Restaurant.create!(name: 'Restaurant3', description: 'Description 3')
Restaurant4 = Restaurant.create!(name: 'Restaurant4', description: 'Description 4')
Restaurant5 = Restaurant.create!(name: 'Restaurant5', description: 'Description 5')

Cat1 = Category.create!(name: 'Fast food')
Cat2 = Category.create!(name: 'Chinese')
Cat3 = Category.create!(name: 'Continental')
Cat4 = Category.create!(name: 'Italian')
Cat5 = Category.create!(name: 'Pakistani')

Item1 = Item.create!(title: 'Pizza', description: 'This is pizza', price: 10, status: 'true',
                     restaurant_id: Restaurant1.id)
Item2 = Item.create!(title: 'Burger1', description: 'This is Burger1', price: 20, status: 'true',
                     restaurant_id: Restaurant2.id)
Item3 = Item.create!(title: 'Burger2', description: 'This is Burger2', price: 30, status: 'true',
                     restaurant_id: Restaurant3.id)
Item4 = Item.create!(title: 'Chicken Karahi', description: 'Pakistani chicken karahi', price: 40, status: 'true',
                     restaurant_id: Restaurant4.id)
Item5 = Item.create!(title: 'Manchurian', description: 'Chinese special', price: 50, status: 'true',
                     restaurant_id: Restaurant5.id)

ItemCategory1 = ItemCategory.create!(item_id: Item1.id, category_id: Cat1.id)
ItemCategory2 = ItemCategory.create!(item_id: Item2.id, category_id: Cat2.id)
ItemCategory3 = ItemCategory.create!(item_id: Item3.id, category_id: Cat3.id)
ItemCategory4 = ItemCategory.create!(item_id: Item4.id, category_id: Cat4.id)
ItemCategory5 = ItemCategory.create!(item_id: Item5.id, category_id: Cat5.id)

@order1 = Order.create!(user_id: User1.id, final_total: '10', status: 'ordered',
                        phone: User1.phone, address: User1.address)
@order2 = Order.create!(user_id: User1.id, final_total: '20', status: 'ordered',
                        phone: User1.phone, address: User1.address)
@order3 = Order.create!(user_id: User2.id, final_total: '30', status: 'paid',
                        phone: User2.phone, address: User2.address)
@order4 = Order.create!(user_id: User2.id, final_total: '50', status: 'paid',
                        phone: User3.phone, address: User3.address)
@order5 = Order.create!(user_id: User3.id, final_total: '60', status: 'cancelled',
                        phone: User3.phone, address: User3.address)

OrderItem.create!(order_id: @order1.id, item_id: Item1.id, quantity: 1, unit_price: Item1.price, total: 10)
OrderItem.create!(order_id: @order2.id, item_id: Item2.id, quantity: 1, unit_price: Item2.price, total: 20)
OrderItem.create!(order_id: @order3.id, item_id: Item3.id, quantity: 1, unit_price: Item3.price, total: 30)
OrderItem.create!(order_id: @order4.id, item_id: Item4.id, quantity: 1, unit_price: Item4.price, total: 40)
OrderItem.create!(order_id: @order5.id, item_id: Item5.id, quantity: 1, unit_price: Item5.price, total: 50)
