require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

fonda = Restaurant.new("Fonda")
talde = Restaurant.new("Talde")
bobs_burgers = Restaurant.new("bobs_burgers")

tina = Customer.new("Tina", "Belcher")
gene = Customer.new("Gene", "Belcher")
louise = Customer.new("Louise", "Belcher")

Review.new(fonda, louise, "worst meal EVER")
Review.new(bobs_burgers, gene, "meh!")
Review.new(talde, tina, "cute waiters")
Review.new(fonda, tina, "try the guac")
Review.new(talde, louise, "no comment")

Customer.find_by_name("Louise")

gene.add_review(fonda, "QUESO!")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
