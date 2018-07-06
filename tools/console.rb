require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

customer1 = Customer.new("Jack", "Yeung")
customer2 = Customer.new("Charlie", "Tung")

review1 = Review.new("Jack Yeung", "McDonald")
review2 = Review.new("Charlie Tung", "Chipotle")

restaurant1 = Restaurant.new("McDonald")
restaurant2 = Restaurant.new("Chipotle")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
