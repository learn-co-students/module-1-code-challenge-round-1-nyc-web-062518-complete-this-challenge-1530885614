# Please copy/paste all three classes into this file to submit your solution!
class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all #should return **all** of the customer instances
    @@all
  end

  def self.find_by_name(name) #given a string of a **full name**, returns the **first customer** whose full name matches
    Review.all.find do |review|
      if review.customer.full_name == name
        review.customer.full_name #stack level too deep
      end
    end
  end

  def self.find_all_by_first_name(name)#given a string of a first name, returns an **array** containing all customers with that first name
    Review.all.collect do |review|
      if review.customer.first_name == name
        review.customer.first_name #stack level too deep
      end
    end
  end

  def self.all_names#should return an **array** of all of the customer full names
    Review.all.collect do |review|
        review.customer.full_name #stack level too deep
      end
    end
  end

  def add_review(restaurant, content)
    #given a **restaurant object** and some review content (as a string),
    #creates a new review
    review = Review.new(review, self, restaurant)
    #associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`
  end
end

class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #returns an array of all restaurants
    @@all
  end

  def self.find_by_name(name) #given a string of restaurant name, returns the first restaurant that matches
    Review.all.find do |review|
      if review.restaurant.name == name #stack level too deep?
        review.restaurant.name
      end
    end
  end

  def reviews #returns an array of all reviews for that restaurant
    Review.all.collect do |review|
      if review.restaurant.name == self
        review.review #stack level too deep
      end
    end
  end

  def customers #returns all of customers who have written reviews of that restaurant
    #A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`
    Review.all.collect do |review|
      if review.restaurant == self
        review.customer #stack level too deep
      end
    end
  end
end

class Review
  @@all = []

  attr_accessor :review, :customer, :restaurant

  def initialize(review, customer, restaurant)
    @review = review
    @customer = customer
    @restaurant = restaurant
    @@all << self
  end

  def self.all #returns all of the reviews
    @@all
  end

  def customer #returns the customer object for that given review
    Review.all.collect do |review|
      if review == self
        review.customer #stack level too deep?
      end
    end
  end

  def restaurant #returns the restaurant object for that given review
    Review.all.collect do |review|
      if review == self
        review.restaurant #stack level too deep?
      end
    end
  end
end
