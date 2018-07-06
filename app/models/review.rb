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
