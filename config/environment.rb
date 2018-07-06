require 'bundler/setup'
Bundler.require
require_rel '../app'
require_all 'app'

customer_one = Customer.new("lillian","zhang")
customer_two = Customer.new("ye","ni")
customer_three = Customer.new("yichen","Ohahahah")

restaurant_one = Restaurant.new("AAAA")
restaurant_two = Restaurant.new("BBBB")
restaurant_three = Restaurant.new("CCCC")

review_one = Review.new(customer_one,restaurant_one,"good")
review_two = Review.new(customer_two,restaurant_two,"ok")
review_three = Review.new(customer_three,restaurant_three,"bad")

binding.pry
false
