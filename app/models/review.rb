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
