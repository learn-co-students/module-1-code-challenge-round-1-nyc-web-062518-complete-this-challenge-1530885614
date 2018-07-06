require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ryan = Customer.new("Ryan", "Namgung")
austin = Customer.new("Austin", "Huang")
nak = Restaurant.new("Nakiyama")
tokyo = Restaurant.new("Tokyo")
ryan.add_review(nak, "This place is great! all you can eat sushi? What a steal!")
austin.add_review(nak, "This place sucks. I'm on a lean bulk and I don't eat anything but chicken breast.")
this_review = Review.new(ryan, tokyo, "I hate this place.")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
