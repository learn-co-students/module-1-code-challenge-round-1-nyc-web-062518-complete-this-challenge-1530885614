class Review

    @@all = []

    attr_accessor :customer, :restaurant, :content

    def initialize(customer, restaurant, content='')
        @content = content
        @customer = customer
        @restaurant = restaurant
        @@all << self
    end

    def self.all
        @@all
    end
  
end

# * Review.all
#   * returns all of the reviews
# * Review#customer
#   * returns the customer object for that given review
# * Review#restaurant
#   * returns the restaurant object for that given review
