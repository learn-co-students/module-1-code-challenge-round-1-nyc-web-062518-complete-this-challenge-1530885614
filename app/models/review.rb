class Review
  attr_accessor :customer, :restaurant, :content
  @@all =[]

  def initialize(customer, restaurant, content)
     @customer = customer
     @restaurant = restaurant
     @content = content
     @@all << self
  end

  def self.all
    @@all
  end

  def customer
    review.map do|review|
      review.customer
    end
  end

  def restaurant
    review.map do|review|
      review.restaurant
    end
  end

end
