require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# test
# customer_one = Customer.new("rose", "huang")
# customer_two = Customer.new("joe", "lin")

# restaurant_one = Restaurant.new("Sarah")
# restaurant_two = Restaurant.new("Jack")


# review_one = Review.new("good", customer_two, restaurant_two)
# review_two = Review.new("good", customer_one, restaurant_one)


# test
binding.pry
0 #leave this here to ensure binding.pry isn't the last line