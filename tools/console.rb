require_relative '../config/environment.rb'

require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'


def reload
  load 'config/environment.rb'
end


sean = Customer.new("sean", "conrad")
sean2 = Customer.new("sean", "john")
jon = Customer.new("jon", "park")
spiderman = Customer.new("spider", "man")

apple_bees = Restaurant.new("Apple Bees")
cheesecake_factory = Restaurant.new("CheesCake Factory")
chipotle = Restaurant.new("Chipotle")

sean_apple_bees_review = Review.new(apple_bees, sean, "blaa")
sean_cheesecake_factory_review = Review.new(cheesecake_factory, sean, "good food")
sean_chipotle_review = Review.new(chipotle, sean, "stuff")

# jon_apple_bees_review = Review.new(apple_bees, jon)
# jon_cheesecake_factory_review = Review.new(cheesecake_factory, jon)
# jon_chipotle_review = Review.new(chipotle, jon)

# spiderman_apple_bees_review = Review.new(apple_bees, spiderman)
# spiderman_cheesecake_factory_review = Review.new(cheesecake_factory, spiderman)
# spiderman_chipotle_review = Review.new(chipotle, spiderman)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chipotle.reviews

0 #leave this here to ensure binding.pry isn't the last line