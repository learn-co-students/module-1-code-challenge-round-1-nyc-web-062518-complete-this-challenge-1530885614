require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

lin = Customer.new("Maneepailin", "Sriuthenchai")
graham = Customer.new("Graham", "Troyer-Joy")
graham2 = Customer.new("Graham", "Whoever")
elbin = Customer.new("Elbin", "Keeppanasseril")

olive_garden = Restaurant.new("Olive Garden")
papa_johns = Restaurant.new("Papa Johns")
wendys = Restaurant.new("Wendys")

review1 = lin.add_review("Wendys", "good salad")
review2 = graham.add_review("Wendys", "slow")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
