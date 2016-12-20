# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

############# Locations ################
Location.create(location: "Football", open: "false")
Location.create(location: "Soccer", open: "false")
Location.create(location: "Baseball", open: "false")

############# Items ####################
#Candy (0)
Item.create(name: "Snickers", category: "0")
Item.create(name: "Twix", category: "0")
Item.create(name: "Starburst", category: "0")
Item.create(name: "Sourpatch Kids", category: "0")
Item.create(name: "M&Ms", category: "0")
Item.create(name: "Peanut M&Ms", category: "0")

#Snacks (1)
Item.create(name: "Popcorn", category: "1")
Item.create(name: "Peanuts", category: "1")
Item.create(name: "Soft Pretzel", category: "1")
Item.create(name: "Chips", category: "1")

#Cold Beverage (2)
Item.create(name: "Coke", category: "2")
Item.create(name: "Cherry Coke", category: "2")
Item.create(name: "Coke Zero", category: "2")
Item.create(name: "Diet Coke", category: "2")
Item.create(name: "Caffeine Free Coke", category: "2")
Item.create(name: "Sprite", category: "2")
Item.create(name: "Diet Sprite", category: "2")
Item.create(name: "Blue Powerade", category: "2")
Item.create(name: "Red Powerade", category: "2")
Item.create(name: "Yellow Powerade", category: "2")
Item.create(name: "Purple Powerade", category: "2")
Item.create(name: "Mellow Yellow", category: "2")
Item.create(name: "Mr. Pibb", category: "2")

#Hot Beverages (3)
Item.create(name: "Hot Chocolate", category: "3")
Item.create(name: "Coffee", category: "3")

#Mains (4)
Item.create(name: "Hot Dog", category: "4")
Item.create(name: "Brat", category: "4")
Item.create(name: "Bahamma Mama", category: "4")
Item.create(name: "Hamburger", category: "4")
Item.create(name: "Pizza", category: "4")

#Morning (5)
Item.create(name: "Donuts", category: "5")
Item.create(name: "Yogurt", category: "5")
Item.create(name: "Capri Sun", category: "5")

#Fruit (6)
Item.create(name: "Apple", category: "6")
Item.create(name: "Bannana", category: "6")
Item.create(name: "Orange", category: "6")
