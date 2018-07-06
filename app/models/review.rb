class Review

  @@all = []

  attr_accessor :customer, :restaurant

  def initialize(customer, restaurant)
    @customer = customer
    @restaurant = restaurant
    @all << self
  end

# Cannot get the review.all to work in console test.
# have the Review#customer and Review#restaurant methods via attr_accessor

  def self.all
    @all
  end

end
