require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kai = Customer.new("Kai", "Han")
ale = Customer.new("Ale", "Russo")
griffin = Customer.new("Griffin", "Walsh")
taro = Customer.new("Taro", "Nakagawa")
test_kai = Customer.new("Kai", "Test")

odeon = Restaurant.new("Odeon")
mcdonalds = Restaurant.new("McDonalds")

kai.add_review(odeon, "delicious")
griffin.add_review(odeon, "stupdenous")
ale.add_review(odeon, "amazing")
taro.add_review(mcdonalds, "(silently chewing)")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
