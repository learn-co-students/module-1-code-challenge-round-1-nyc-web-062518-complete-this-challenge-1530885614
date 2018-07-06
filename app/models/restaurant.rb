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
