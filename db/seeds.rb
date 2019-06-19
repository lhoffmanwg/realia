# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(first_name:"Kevin", last_name:"Hathaway", email:"kevin@gmail.com", phone:2065551212)
# User.create(first_name:"Linda", last_name:"Smith", email:"laura@gmail.com", phone:2065551131)
# User.create(first_name:"Sarah", last_name:"Jones", email:"sarah@gmail.com", phone:2065559898)
# User.create(first_name:"Tyler", last_name:"Rocks", email:"tyler@gmail.com", phone:2065551134)
# User.create(first_name:"Spock", last_name:"Ears", email:"spock@gmail.com", phone:2065551135)
# User.create(first_name:"Kirk", last_name:"Captain", email:"kirk@gmail.com", phone:2065551136)
# User.create(first_name:"Elaine", last_name:"Johnson", email:"elaine@gmail.com", phone:2065551140)

Listing.create(price:1300000, title:"1930's Spanish Bungalo", description:"Descriptive Words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"placeholder", user_id:3)
Listing.create(price:100000, title:"Mid-century Modern", description:"Descriptive Words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"placeholder", user_id:1)
Listing.create(price:300000, title:"Handyperson's Special", description:"Descriptive Words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"placeholder", user_id:2)
#Listing.create(price:5300000, title:"1930's Spanish Bungalo", description:"Lot's of words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"placeholder")
#Listing.create(price:200000, title:"1930's Spanish Bungalo", description:"Lot's of words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"placeholder")


Favorite.create(listing_id:1, buyer_id:1,rating:5)
Favorite.create(listing_id:2, buyer_id:2,rating:4)
Favorite.create(listing_id:3, buyer_id:3,rating:5)
Favorite.create(listing_id:1, buyer_id:4,rating:4)
Favorite.create(listing_id:2, buyer_id:1,rating:5)
Favorite.create(listing_id:3, buyer_id:1,rating:4)


Buyer.create(name:"George Takai", email:"george@gmail.com", phone:5556864343, budget:300000, bedrooms:3, bathrooms:2)
Buyer.create(name:"Leonard Nemoy", email:"leonard@gmail.com", phone:5556567372, budget:100000, bedrooms:5, bathrooms:1)
Buyer.create(name:"David Bowie", email: "david@gmail.com", phone:5556989653, budget:1300000, bedrooms:3, bathrooms:4)
Buyer.create(name:"Neil Armstrong", email:"neil@gmail.com", phone:5558749372, budget:2500000, bedrooms:5, bathrooms:5)

Agent.create(name:"Kevin Hathaway", email:"kevin@gmail.com" ,phone:5552328909 ,agency:"The Agency", years_exp:7)
Agent.create(name:"Tyler Rocks", email:"tyler@gmail.com" ,phone:5554231215 ,agency:"John L.Scott", years_exp:10)
Agent.create(name:"Spock Ears", email:"spock@gmail.com" ,phone:5554341235 ,agency:"The Agency", years_exp:1)
Agent.create(name:"Kirk Captain", email:"kirk@gmail.com" ,phone:5556764321 ,agency:"Windemere", years_exp:4)
Agent.create(name:"Elaine Johnson", email:"elaine@gmail.com" ,phone:5556567890 ,agency:"Windemere", years_exp:8)
Agent.create(name:"Sarah Jones", email:"sarah@gmail.com" ,phone:5553243132 ,agency:"The Agency", years_exp:17)
Agent.create(name:"Neil Young", email:"neil@gmail.com" ,phone:5554342121 ,agency:"My Agency", years_exp:27)
