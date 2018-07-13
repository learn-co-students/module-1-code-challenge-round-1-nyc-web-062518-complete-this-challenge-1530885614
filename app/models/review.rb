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



end
