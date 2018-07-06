# Please copy/paste all three classes into this file to submit your solution!
#######RESTUARAUNT-CLASS##############
class Restaurant
  #initialized as a reader because we don't need to manipulate the value of name that was passed in
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  #returns all restuarant instances
  def self.all
    @@all
  end

  #given a restaurant name, it will iterate over all restaurants return the first instance where the name that instance matches our restuarant name
  def self.find_by_name(restaurant_name)
    @@all.find do |restaurant|
      restaurant.name == restaurant_name
    end
  end

  #Iterates over the review class and selects all reviews that have a restuarant instance equal to that of our own
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  #uses the instance method reviews and then maps over our restuarants returning the customers who have reviewed our restaurant
  def customers
    reviews.map do |review|
      review.customer
    end
  end
end

#############CUSTOMER-CLASS############

class Customer
  #instantiated as readers because we are not explicitly changing the values of the first and last names
  attr_reader :first_name, :last_name
  @@all = []

  #initialized with first name and last name which are then stored into our class variable all which allows us to view and access all customer instances that have been created
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  #simply returns the full name as a string
  def full_name
    "#{first_name} #{last_name}"
  end

  #returns all the customer instances built
  def self.all
    @@all
  end

  #given a name, it will break the string where there is a space. If the first name matches the first of the split values, then in order to return the customer instance, it also does a check using the && that the last name matches as well
  def self.find_by_name(name)
    name_array = name.split(" ")
    @@all.find do |customer|
      customer.first_name == name_array.first && customer.last_name == name_array.last
    end
  end

  #Uses the select enum to iterate over all the customer instances and return an array of the customers that have the first name given in the param
  def self.find_all_by_first_name(name)
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  #iterates over every single customer instance and maps the string of first and last name into an array per index
  def self.all_names
    @@all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  #Creates a new review using self, restuarant and content
  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

end

#######REVIE W-CLASS##############
class Review
  attr_accessor :customer, :restaurant
  attr_reader :content
  @@all = []

  #initializes a review class with the customer, restaurant and content in that order, and shovels them into the self class array
  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  #returns the class array all
  def self.all
    @@all
  end
end
