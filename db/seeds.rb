User.destroy_all
Location.destroy_all
Visit.destroy_all
Country.destroy_all
Favorite.destroy_all

#Countries
CS.countries.values.each do |country|
    Country.create(name: country)
end

# Users
user1 = User.create(first_name: "John", last_name: "Smith", country_id: Country.find_by(name: "United States").id, email: "johnsmith@gmail.com", password: "password", password_confirmation: "password")
user2 = User.create(first_name: "May", last_name: "Lee", country_id: Country.find_by(name: "France").id, email: "maylee@gmail.com", password: "password", password_confirmation: "password")
user3 = User.create(first_name: "Hank", last_name: "Perez", country_id: Country.find_by(name: "United States").id, email: "hankperez@gmail.com", password: "password", password_confirmation: "password")
user4 = User.create(first_name: "Alexis", last_name: "Green", country_id: Country.find_by(name: "Mongolia").id, email: "alexisgreen@gmail.com", password: "password", password_confirmation: "password")
user5 = User.create(first_name: "Faith", last_name: "Chen", country_id: Country.find_by(name: "Mongolia").id, email: "faithchen@gmail.com", password: "password", password_confirmation: "password")


# Locations
loc1 = Location.create(name: "Shakespeare and Company", country_id: Country.find_by(name: "France").id, description: "https://s26162.pcdn.co/wp-content/uploads/2015/11/shake-and-co.jpg")
loc2 = Location.create(name: "Holybelly", country_id: Country.find_by(name: "France").id, description: "A must-vist cafe in Paris for brunch.", user_id: user1.id, image_url: "https://www.jeffontheroad.com/wp-content/uploads/2016/06/dezjeff-paris-dejeuner-holybelly-7.jpg")
loc3 = Location.create(name: "Burgermeister", country_id: Country.find_by(name: "Germany").id, description: "Berlin's favorite local burger joint.", user_id: user3.id, image_url: "https://berlinfoodstories.com/wp-content/uploads/2016/01/Burgermeister-Berlin-Venue_.jpg")
loc4 = Location.create(name: "Sam's Noodle Station", country_id: Country.find_by(name: "United States").id, description: "A delicious restaurant serving handmade udon.", user_id: user1.id, image_url: "https://s3-media3.fl.yelpcdn.com/bphoto/4LOyKHxl1oRHnCg8RXB-lQ/o.jpg")
loc5 = Location.create(name: "Non Nuoc Village", country_id: Country.find_by(name: "Vietnam").id, description: "A quiet village close to the central city of Da Nang.", user_id: user4.id, image_url: "http://static.asiawebdirect.com/m/bangkok/portals/vietnam/homepage/da-nang/shopping/non-nuoc-fine-arts-village/allParagraphs/BucketComponent/ListingContainer/00/image/non-nuoc-village-02.jpg")

# Visits
visit1 = Visit.create(user: user1, location: loc1, visit_date: "Dec 19 2000")
visit2 = Visit.create(user: user2, location: loc2, visit_date: "Jan 1 2002")
visit3 = Visit.create(user: user4, location: loc4, visit_date: "Jan 6 1980")
visit4 = Visit.create(user: user1, location: loc1, visit_date: "May 19 2001")
visit5 = Visit.create(user: user1, location: loc5, visit_date: "Aug 6 2019")
visit6 = Visit.create(user: user2, location: loc5, visit_date: "July 9 2000")
visit7 = Visit.create(user: user3, location: loc2, visit_date: "Dec 1 2000")
visit8 = Visit.create(user: user3, location: loc1, visit_date: "Dec 4 2030")
visit9 = Visit.create(user: user5, location: loc5, visit_date: "Dec 19 2000")
visit10 = Visit.create(user: user5, location: loc3, visit_date: "Apr 19 2000")
visit11 = Visit.create(user: user2, location: loc1, visit_date: "May 19 2000")
