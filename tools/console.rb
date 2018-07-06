require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jared = Customer.new("Jared", "Mills")
jeff = Customer.new("Jeff", "Hoch")
adam = Customer.new("Adam", "Cruz")
chris = Customer.new("Chris", "Guthrie")
colin = Customer.new("Colin", "Tatro")
ed = Customer.new("Ed", "Holderbaum")
another_ed = Customer.new("Ed", "Smith")

rokc = Restaurant.new("ROKC")
chipped_cup = Restaurant.new("Chipped Cup")
harlem_public = Restaurant.new("Harlem Public")
lido = Restaurant.new("Lido")
mcdonalds = Restaurant.new("McDonald's")


rokc_review_1 = Review.new(rokc, jared, "great drinks!")
rokc_review_2 = Review.new(rokc, chris, "delicious ramen")
mcdonalds_review = Review.new(mcdonalds, jeff, "bad food")
harlem_public_review_1 = Review.new(harlem_public, colin, "great burgers and nice rotating beer selection")
harlem_public_review_1 = Review.new(harlem_public, ed, "delicious but reaaaalllly unhealthy")
chipped_cup_review_1 = Review.new(chipped_cup, jared, "great coffee and good atmosphere")
chipped_cup_review_2 = Review.new(chipped_cup, adam, "love their coffee and pastries")
chipped_cup_review_3 = Review.new(chipped_cup, colin, "best cafe in the neighborhood")
lido_review_1 = Review.new(lido, ed, "good food and wine")
lido_review_2 = Review.new(lido, jared, "one of my regular spots, definitely recommended")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
