User.destroy_all
Location.destroy_all
Visit.destroy_all
Country.destroy_all
Favorite.destroy_all

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
loc1 = Location.create(name: "Shakespear and Company", country_id: france.id, description: "The perfect bookstore and cafe to enjoy a good cup of coffee. ", user_id: user2.id, image_url: "http://images.faena.com/wp-content/uploads/sites/4/2017/08/shakespeare-and-co.jpg?_ga=2.135089393.1500810842.1562253848-215521494.1562253848")
loc2 = Location.create(name: "Holybelly", country_id: france.id, description: "A must-vist cafe in Paris for brunch.", user_id: user1.id, image_url: "https://www.jeffontheroad.com/wp-content/uploads/2016/06/dezjeff-paris-dejeuner-holybelly-7.jpg")
loc3 = Location.create(name: "Burgermeister", country_id: germany.id, description: "Berlin's favorite local burger joint.", user_id: user3.id, image_url: "https://dynaimage.cdn.cnn.com/cnn/q_auto,w_496,c_fill,g_auto,h_279,ar_16:9/http%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F180718111756-05-berlin-restaurants---burgermeister-schlesisches-tor.jpg")
loc4 = Location.create(name: "Sam's Noodle Station", country_id: usa.id, description: "A delicious restaurant serving handmade udon.", user_id: user1.id, image_url: "https://s3-media3.fl.yelpcdn.com/bphoto/4LOyKHxl1oRHnCg8RXB-lQ/o.jpg")
loc5 = Location.create(name: "Non Nuoc Village", country_id: vietnam.id, description: "A quiet village close to the central city of Da Nang.", user_id: user4.id, image_url: "https://vi-pullzone-juw0eep8zpvcctq.netdna-ssl.com/wp-content/uploads/2018/03/Non-Nuoc-stone-carving-village.jpg")

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
