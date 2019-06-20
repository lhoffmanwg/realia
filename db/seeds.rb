# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Buyer.create(name:"George Takai", email:"george@gmail.com", phone:5556864343, budget:300000, bedrooms:3, bathrooms:2)
Buyer.create(name:"Leonard Nemoy", email:"leonard@gmail.com", phone:5556567372, budget:100000, bedrooms:5, bathrooms:1)
Buyer.create(name:"David Bowie", email: "david@gmail.com", phone:5556989653, budget:1300000, bedrooms:3, bathrooms:4)
Buyer.create(name:"Neil Armstrong", email:"neil@gmail.com", phone:5558749372, budget:2500000, bedrooms:5, bathrooms:5)

Agent.create(name:"Kevin Hathaway", email:"kevin@gmail.com" ,phone:5552328909 ,agency_id:1, years_exp:7)
Agent.create(name:"Tyler Rocks", email:"tyler@gmail.com" ,phone:5554231215 ,agency_id:3, years_exp:10)
Agent.create(name:"Spock Ears", email:"spock@gmail.com" ,phone:5554341235 ,agency_id:4, years_exp:1)
Agent.create(name:"Kirk Captain", email:"kirk@gmail.com" ,phone:5556764321 ,agency_id:6, years_exp:4)
Agent.create(name:"Elaine Johnson", email:"elaine@gmail.com" ,phone:5556567890 ,agency_id:5, years_exp:8)
Agent.create(name:"Sarah Jones", email:"sarah@gmail.com" ,phone:5553243132 ,agency_id:5, years_exp:17)
Agent.create(name:"Neil Young", email:"neil@gmail.com" ,phone:5554342121 ,agency_id:2, years_exp:27)

Agency.create(agency_name:"The Agency", year_founded:"1990")
Agency.create(agency_name:"John L.Scott", year_founded:"1920")
Agency.create(agency_name:"Windemere", year_founded:"2000")
Agency.create(agency_name:"My Agency", year_founded:"1970")
Agency.create(agency_name:"Southeby's", year_founded:"2004")
Agency.create(agency_name:"Alaine Pinnel", year_founded:"2011")

Listing.create(price:1300000, title:"My House", description:"Descriptive Words go here", agent_id:3, house_number:"777", street:"Beach Drive", city:"San Juan", state:"CA", zip:95129, house_pic:"https://photos.zillowstatic.com/cc_ft_1536/ISifv57uv3js720000000000.webp", date_listed:"2018-05-30", date_sold:"2019-06-15")
Listing.create(price:1300000, title:"My House", description:"Descriptive Words go here", agent_id:3, house_number:"777", street:"Beach Drive", city:"San Juan", state:"CA", zip:95129, house_pic:"https://pmcvariety.files.wordpress.com/2018/07/bradybunchhouse_sc11.jpg?w=1000&h=563&crop=1", date_listed:"2018-05-30", date_sold:"2019-06-15")
Listing.create(price:100000, title:"Mid-century Modern", description:"Descriptive Words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"https://photos.zillowstatic.com/cc_ft_768/IS2zr3hfgwtj421000000000.webp", date_listed:"2018-05-30", date_sold:"2019-06-15")
Listing.create(price:300000, title:"Handyperson's Special", description:"Descriptive Words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"https://photos.zillowstatic.com/cc_ft_768/ISuomu7mr8kysi1000000000.webp", date_listed:"2018-05-30", date_sold:"2019-06-15")
Listing.create(price:5300000, title:"1930's Spanish Bungalo", description:"Lot's of words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"https://photos.zillowstatic.com/cc_ft_768/IS6ix7gm7trf0w0000000000.webp", date_listed:"2018-05-30", date_sold:"2019-06-15")
Listing.create(price:200000, title:"1930's Spanish Bungalo", description:"Lot's of words", agent_id:3, house_number:"824", street:"Riverside Drive", city:"San Jose", state:"CA", zip:95125, house_pic:"https://pmcvariety.files.wordpress.com/2018/07/bradybunchhouse_sc11.jpg?w=1000&h=563&crop=1", date_listed:"2018-05-30", date_sold:"2019-06-15")

Favorite.create(listing_id:1, buyer_id:1, rating:5)
Favorite.create(listing_id:2, buyer_id:2, rating:4)
Favorite.create(listing_id:3, buyer_id:3, rating:5)
Favorite.create(listing_id:1, buyer_id:4, rating:4)
Favorite.create(listing_id:2, buyer_id:1, rating:5)
Favorite.create(listing_id:3, buyer_id:1, rating:4)
