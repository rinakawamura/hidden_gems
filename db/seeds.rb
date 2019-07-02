User.destroy_all
Location.destroy_all
Visit.destroy_all
Country.destroy_all

#Countries
usa = Country.create(name: "United States of America")
germany = Country.create(name: "Germany")
france = Country.create(name: "France")
mongolia = Country.create(name: "Mongolia")
vietnam = Country.create(name: "Vietnam")

# Users 
user1 = User.create(first_name: "John", last_name: "Smith", country_id: usa.id, email: "johnsmith@gmail.com", password: "password", password_confirmation: "password")
user2 = User.create(first_name: "May", last_name: "Lee", country_id: france.id, email: "maylee@gmail.com", password: "password", password_confirmation: "password")
user3 = User.create(first_name: "Hank", last_name: "Perez", country_id: usa.id, email: "hankperez@gmail.com", password: "password", password_confirmation: "password")
user4 = User.create(first_name: "Alexis", last_name: "Green", country_id: mongolia.id, email: "alexisgreen@gmail.com", password: "password", password_confirmation: "password")
user5 = User.create(first_name: "Faith", last_name: "Chen", country_id: mongolia.id, email: "faithchen@gmail.com", password: "password", password_confirmation: "password")


# Locations
loc1 = Location.create(name: "This Restaurant", country_id: france.id, description: "A restaurant.", user_id: user5.id)
loc2 = Location.create(name: "This Park", country_id: france.id, description: "A park.", user_id: user1.id)
loc3 = Location.create(name: "This Museum", country_id: germany.id, description: "A museum.", user_id: user3.id)
loc4 = Location.create(name: "This Cafe", country_id: usa.id, description: "A cafe.", user_id: user1.id)
loc5 = Location.create(name: "This Bridge", country_id: vietnam.id, description: "A bridge.", user_id: user4.id)

# Visits
visit1 = Visit.create(user: user1, location: loc1, visit_date: "Dec 19 2000")
visit2 = Visit.create(user: user1, location: loc1, visit_date: "Jan 1 2002")
visit3 = Visit.create(user: user1, location: loc1, visit_date: "Jan 6 1980")
visit4 = Visit.create(user: user1, location: loc1, visit_date: "May 19 2001")
visit5 = Visit.create(user: user1, location: loc1, visit_date: "Aug 6 2019")
visit6 = Visit.create(user: user1, location: loc1, visit_date: "July 9 2000")
visit7 = Visit.create(user: user1, location: loc1, visit_date: "Dec 1 2000")
visit8 = Visit.create(user: user1, location: loc1, visit_date: "Dec 4 2030")
visit9 = Visit.create(user: user1, location: loc1, visit_date: "Dec 19 2000")
visit10 = Visit.create(user: user1, location: loc1, visit_date: "Apr 19 2000")
visit11 = Visit.create(user: user1, location: loc1, visit_date: "May 19 2000")

