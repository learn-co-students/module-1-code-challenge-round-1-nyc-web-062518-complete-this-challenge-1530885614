class Restaurant

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end


  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end


  def reviews
    Reviews.all.select {|review| review.restaurant == self}
  end


# Did not finish
# trying to go through each customer and see if they have a review. only return customer if review is of this restaurant instance.
  def customers
    Customer.all.select {|customer| customer.review == self}
  end

end
