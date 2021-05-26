# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating users...'
tester = User.new(user_name: "Tes", email: "test@test.com", password: "123456")
tester.save!
puts 'Finished!'


puts 'Creating fields...'
wiese = Field.new(user: tester, name: "Wiese", category: "flowers", size: 120, price: 5, description:"A small lovely field.")
wiese.save!

meadow = Field.new(user: tester, name: "Meadow", category: "flowers", size: 220, price: 10, description:"I plant sunflowers every year.")
meadow.save!

fieldHR = Field.new(user: tester, name: "Field on Highroad", category: "fallow", size: 340, price: 12, description:"A fallow field to buzz on.")
fieldHR.save!

fallow = Field.new(user: tester, name: "Fallow field for flyers", category: "fallow", size: 280, price: 10, description:"Fallows are best if left alone")
fallow.save!

fieldy = Field.new(user: tester, name: "Tiny Field", category: "flowers", size: 80, price: 4, description:"Tiny field for tiny bees.")
fieldy.save!
puts 'Finished!'



# add_column :users, :user_name, :string
#     add_column :users, :first_name, :string
#     add_column :users, :last_name, :string
#     add_column :users, :phone_number, :string