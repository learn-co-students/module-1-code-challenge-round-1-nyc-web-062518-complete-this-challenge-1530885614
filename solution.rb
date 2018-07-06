# Please copy/paste all three classes into this file to submit your solution!


#  Restaurant --< Review >-- Customer

class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end


  def self.all_names
    @@all
  end


  def full_name
    "#{first_name} #{last_name}"
  end


  def self.find_by_name(name)
    self.all.find {|customer| customer.full_name == name}
  end


  def self.find_all_by_first_name(name)
    # trying to get an array of all the customers with matching first name.
    # not working
    self.full_name.select {|customer| customer == name}
  end


  def add_review(restaurant, content)
# did not finish
  end


end


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
