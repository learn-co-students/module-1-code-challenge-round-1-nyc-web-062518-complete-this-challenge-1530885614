require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tony = Customer.new("Tony", "Turetsky")
elvis = Customer.new("Elvis", "Presley")
batman = Customer.new("Bruce", "Wayne")

mcdonalds = Restaurant.new("McDonalds")
burger_king = Restaurant.new("BK")

elvis.add_review(mcdonalds, "Whoa there momma")
batman.add_review(burger_king, "FEAR ME")
tony.add_review(mcdonalds, "only came to use the bathroom. 2/10")
tony.add_review(burger_king, "had a whopper jr. shit my brains out. 9/10")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
