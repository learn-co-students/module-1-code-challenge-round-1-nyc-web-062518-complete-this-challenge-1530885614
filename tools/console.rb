require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

dan = Customer.new("Dan", "Manners")
lawrence = Customer.new("Lawrence", "Conley")
sarah = Customer.new("Sarah", "Bailey")
graham = Customer.new("Graham", "Troyer-Joy")
ann = Customer.new("Ann","Kim")
mominette = Restaurant.new("Mominette")
shake_shack = Restaurant.new("Shake Shack")
peaches = Restaurant.new("Peaches")
pizza_station = Restaurant.new("Pizza Station")
graham.add_review(mominette, "good omelette!")
ann.add_review(peaches, "delicious!")
sarah.add_review(peaches, "so good!")
lawrence.add_review(pizza_station, "great pizza!")
dan.add_review(pizza_station, "not so good")
lawrence.add_review(shake_shack, "great burgers!")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
