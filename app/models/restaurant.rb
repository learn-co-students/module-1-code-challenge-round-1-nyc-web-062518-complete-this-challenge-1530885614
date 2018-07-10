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
    reviews.select do |review|
      review.customer
    end
  end


end
