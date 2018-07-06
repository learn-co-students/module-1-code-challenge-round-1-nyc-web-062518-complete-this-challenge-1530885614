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

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

  def self.find_by_name(name)
    names = Restaurant.all.select do |restaurant|
      restaurant.name == name
    end
    names[0]
  end

end
