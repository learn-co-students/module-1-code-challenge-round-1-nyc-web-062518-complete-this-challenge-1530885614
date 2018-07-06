require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# NOTE: All the restaurants here are great Hummus joints in Jerusalem, and the customers are my wife, my cousin, my father-in-law, and myself.

daniel = Customer.new("Daniel", "Rein")
jen = Customer.new("Jennifer","Foss_feig")
daniel2 = Customer.new("Daniel", "Safran")
yosi = Customer.new("Yosi", "Foss-Feig")

pinati = Restaurant.new("Pinati")
taami = Restaurant.new("Taami")
rachmo = Restaurant.new("Rachmo")

review1 = Review.new(daniel, pinati)
review2 = Review.new(jen, pinati)
review3 = Review.new(daniel2, pinati)
review4 = Review.new(yosi, pinati)
review5 = Review.new(jen, taami)
review6 = Review.new(daniel, taami)
review7 = Review.new(daniel2, taami)
review8 = Review.new(yosi, rachmo)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
