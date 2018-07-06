class Restaurant
  attr_accessor :name


@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant|
      restaurant.name == restaurant_name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    customers = []
    Review.all.each do |review|
      if review.restaurant == self
        customers << review.customer
      end
    end
    customers
  end
end
