class Restaurant

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def self.all
    @@all
  end

  def customers

    Customer.all.select { |customer| self.reviews.map { |review| review.customer } .include?(customer) }

  end

end


# * Restaurant.all
#   * returns an array of all restaurants
# * Restaurant.find_by_name(name)
#   * given a string of restaurant name, returns the first restaurant that matches
# * Restaurant#reviews
#   * returns an array of all reviews for that restaurant
# * Restaurant#customers
#   * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`