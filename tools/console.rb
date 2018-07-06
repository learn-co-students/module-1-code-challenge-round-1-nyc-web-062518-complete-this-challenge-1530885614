require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
yung = Customer.new("Yung", "Leung")
lin = Customer.new("Lin", "Something")
applebees = Restaurant.new("Apple Bees")
five_stars = Review.new("Five Stars", yung, applebees)
two_stars = Review.new("Two Stars", lin, applebees)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line

#Notes
# Object Relations Code Challenge
# Yelp-style domain
# 3 three models: `Restaurant`, `Customer`, `Review`.
#
# Restaurant: has many Reviews
# Customer: has many Reviews
# Review(single source truth): belongs to a Customer` & to a Restaurant
#
# Restaurant : Customer: M : M
#
# goal: build out all methods listed in deliverables
# use higher-level array methods such as `map`, `select` & `find` when appropriate in place of `each`
