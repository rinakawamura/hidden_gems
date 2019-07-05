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
loc1 = Location.create(name: "Shakespeare and Company", country_id: Country.find_by(name: "France").id, description: "The perfect bookstore and cafe to enjoy a good cup of coffee.", user_id: user1.id, image_url: "https://s26162.pcdn.co/wp-content/uploads/2015/11/shake-and-co.jpg")
loc2 = Location.create(name: "Holybelly", country_id: Country.find_by(name: "France").id, description: "A must-vist cafe in Paris for brunch.", user_id: user1.id, image_url: "https://www.jeffontheroad.com/wp-content/uploads/2016/06/dezjeff-paris-dejeuner-holybelly-7.jpg")
loc3 = Location.create(name: "Burgermeister", country_id: Country.find_by(name: "Germany").id, description: "Berlin's favorite local burger joint.", user_id: user3.id, image_url: "https://berlinfoodstories.com/wp-content/uploads/2016/01/Burgermeister-Berlin-Venue_.jpg")
loc4 = Location.create(name: "Sam's Noodle Station", country_id: Country.find_by(name: "United States").id, description: "A delicious restaurant serving handmade noodles.", user_id: user1.id, image_url: "https://s3-media3.fl.yelpcdn.com/bphoto/4LOyKHxl1oRHnCg8RXB-lQ/o.jpg")
loc5 = Location.create(name: "Non Nuoc Village", country_id: Country.find_by(name: "Vietnam").id, description: "A quiet village close to the central city of Da Nang.", user_id: user4.id, image_url: "http://static.asiawebdirect.com/m/bangkok/portals/vietnam/homepage/da-nang/shopping/non-nuoc-fine-arts-village/allParagraphs/BucketComponent/ListingContainer/00/image/non-nuoc-village-02.jpg")
loc6 = Location.create(name: "Kusatsu Onsen", country_id: Country.find_by(name: "Japan").id, description: "A steaming, gushing, natural hot spring resort.", user_id: user5.id, image_url: "https://cdn-images-1.medium.com/max/1600/1*PxmYu3Nxfniw4zlu3PUGvA.jpeg")
loc7 = Location.create(name: "Cushing Center", country_id: Country.find_by(name: "United States").id, description: "This museum at the Yale Med School is a brainiac's dream come true.", user_id: user2.id, image_url: "https://lifeabsorbed.files.wordpress.com/2012/01/img_7989.jpg")
loc8 = Location.create(name: "Minoh Waterfall", country_id: Country.find_by(name: "Japan").id, description: "Snack on fried Japanese maple leaves on your trek up to the beautiful waterfall.", user_id: user4.id, image_url: "https://www.japan-guide.com/g18/4019_02.jpg")
loc9 = Location.create(name: "The Cauldron", country_id: Country.find_by(name: "United States").id, description: "Live out your Harry Potter dreams in this magical pub.", user_id: user3.id, image_url: "https://static1.squarespace.com/static/578235d2c534a5d68f2335fd/5a159007c83025aa86b9fd4f/5a15900af9619afa6a9d66ba/1511363996741/IMG_2806.jpg")
loc10 = Location.create(name: "The Astrology Shop", country_id: Country.find_by(name: "United Kingdom").id, description: "Crystals, tarot cards, personal horoscopes, what more do you need?", user_id: user5.id, image_url: "https://media.timeout.com/images/104010773/630/472/image.jpg")
loc11 = Location.create(name: "Dine In The Dark", country_id: Country.find_by(name: "Malaysia").id, description: "The most unique dining experience in Malaysia.", user_id: user2.id, image_url: "https://iamaileen.com/wp-content/uploads/2017/09/dine-in-the-dark-dining-blind-bangkok-thailand-sheraton-grande-sukhumvit-thailand.jpg")
loc12 = Location.create(name: "Hoheikyo Hot Spring", country_id: Country.find_by(name: "Japan").id, description: "The perfect place to kick back and relax.", user_id: user1.id, image_url: "https://jozankei.jp/wp-content/uploads/2015/12/231.jpg")
loc13 = Location.create(name: "Nha Trang Noodle House", country_id: Country.find_by(name: "United States").id, description: "A taste of authentic Vietnamese cuisine.", user_id: user3.id, image_url: "http://1.bp.blogspot.com/-JhMpFAvLTFc/VaivV4jFydI/AAAAAAAAAbg/hVNmBye8-nI/s640/20150716_190823.jpg")
loc14 = Location.create(name: "Trader Sam's", country_id: Country.find_by(name: "United States").id, description: "A fun tiki bar in San Francisco.", user_id: user4.id, image_url: "http://blog.tebeau.com/wp-content/uploads/2016/02/tradrsams-sf-20130301-338.jpg")
loc15 = Location.create(name: "Kaiping", country_id: Country.find_by(name: "China").id, description: "A city with unique architecture and food in China.", user_id: user5.id, image_url: "https://unborderedlife.com/wp-content/uploads/2019/02/kaiping_diaolou_zili_roofview-830x553.jpg")

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
