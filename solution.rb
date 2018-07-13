class Review

  attr_reader :restaurant, :content, :customer

  @@all = []

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

#reader for all review instances
  def self.all
    @@all
  end

#searches all review instances for a review that has a customer instance that matches the person arguement. returns an array
  def customer(person)
    self.all.select do |review|
      review.customer = person
    end
  end

#searches all review instances for a review that has a restaurant that matces the dining_establishment arguement. returns an array
  def restaurant(dining_establishment)
    self.all.select do |review|
      review.restaurant == dining_establishment
    end
  end

end


class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end


#reader for @@all
  def self.all
    @@all
  end

#searches all customers for any instance whose first name matches the name arguement. returns an array of all instances that match
  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

#returns an array of all customers first and last names using the full_name method
  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

#creates an instance of a Review taking in arguements of (an instance of a) restaurant, the review content. adds in instance of self as customer.
  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end

end

class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

#reader for all restaurant instances
  def self.all
    @@all
  end

#searches the @@all class variable for the FIRST restaurant that matches the name arguement
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  #returns an array of all reviews for this instance of restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

#returns an array of customers who left reviews for this instance of restaurant
  def customers
    self.reviews.map do |review|
      review.customer
    end
  end


end
