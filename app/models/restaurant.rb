require 'pry'
class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    # given a string of restaurant name,
    # returns the first restaurant that matches
    res1 = Restaurant.new("Rest_Name")
    res1.all.find do |name|
      name.first == self
    end
    self.find_by_name
  end

  def reviews
    # returns an array of all reviews for that restaurant
    review = []
    Reviews.all.map do |reviews|
      review << reviews.restaurant
    end
  end

  def customers
    #   returns all of customers who have written reviews of that restaurant.
    #   A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`
    customer = []
    Reviews.all.map do |reviews|
      customer << reviews.customer
    end
  end

end
