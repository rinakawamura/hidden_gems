User.destroy_all
Location.destroy_all
Visit.destroy_all

#Countries
usa = Country.create(name: "United States of America")
germany = Country.create(name: "Germany")
france = Country.create(name: "France")
mongolia = Country.create(name: "Mongolia")
vietnam = Country.create(name: "Vietnam")

# Users 
user1 = User.create(first_name: "John", last_name: "Smith", country_id: usa.id, email: "johnsmith@gmail.com")
user2 = User.create(first_name: "May", last_name: "Lee", country_id: france.id, email: "maylee@gmail.com")
user3 = User.create(first_name: "Hank", last_name: "Perez", country_id: usa.id, email: "hankperez@gmail.com")
user4 = User.create(first_name: "Alexis", last_name: "Green", country_id: mongolia.id, email: "alexisgreen@gmail.com")
user5 = User.create(first_name: "Faith", last_name: "Chen", country_id: mongolia.id, email: "faithchen@gmail.com")

# Locations
loc1 = Location.create(name: "This Restaurant", country_id: france.id, description: "A restaurant.", user_id: user1)
loc2 = Location.create(name: "This Park", country_id: france.id, description: "A park.", user_id: user1)
loc3 = Location.create(name: "This Museum", country_id: germany.id, description: "A museum.", user_id: user1)
loc4 = Location.create(name: "This Cafe", country_id: usa.id, description: "A cafe.", user_id: user2)
loc5 = Location.create(name: "This Bridge", country_id: vietnam.id, description: "A bridge.", user_id: user4)

# Visits
visit1 = Visit.create(user_id: user1, location_id: loc1, date: "Dec 19 2000")
visit2 = Visit.create(user_id: user1, location_id: loc2)
visit3 = Visit.create(user_id: user2, location_id: loc1)
visit4 = Visit.create(user_id: user2, location_id: loc4)
visit5 = Visit.create(user_id: user2, location_id: loc5)
visit6 = Visit.create(user_id: user3, location_id: loc5)
visit7 = Visit.create(user_id: user4, location_id: loc5)
visit8 = Visit.create(user_id: user5, location_id: loc1)
visit9 = Visit.create(user_id: user5, location_id: loc2)
visit10 = Visit.create(user_id: user5, location_id: loc3)
visit11 = Visit.create(user_id: user5, location_id: loc5)

