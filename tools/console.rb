require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jon = Customer.new(first_name: "Jon", last_name: "Ahn")

ann = Customer.new(first_name: "Ann", last_name: "Kim")

jon_num_two = Customer.new(first_name: "Jon", last_name: "Ahn")
jon_smith = Customer.new(first_name: "Jon", last_name: "Smith")

ann_lower_case = Customer.new(first_name: "ann", last_name: "kim")

chipotle = Restaurant.new(name: "Chipotle")

jon.add_review(chipotle, "'best tacos' said no one ever, but still pretty good")
ann.add_review(chipotle, "not even close to the food in LA :X")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
