class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    #Review.all.map do |review|
    # => review.customer
    #end
    #
    # this could be an alternative way of writing this code, making reviews the strict single source of truth. However, this code only works if the assumption is that every customer immediately writes a review upon visiting a restaurant, and that there can be no customers who haven't written reviews. Instead, I decided that the customer class should know about its own instances. If a customer doesn't write a review, they are still a customer.
    #
    #
    # The problem with this method though, is that if I delete a customer with a .pop method, the review attached to that customer still reamins. Likewise with restaurants. However,I couldn't imagine a time in the real world where a customer would just be deleted, but the functionality did bug me. These were the two trade-offs I weighed when deciding which way to find all my customers/restaurants. Ultimately, I decided upon this way.
    @@all
  end

  def self.find_by_name(name)
    self.all.detect do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def customer_reviews
    ##this is my own function and not a deliverable
    Review.all.select do |review|
      review.customer == self
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end
end

###############################################

class Review

  attr_accessor :content, :customer, :restaurant
  @@all = []

  def initialize(customer, restaurant, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
  end

  def self.all
    @@all
  end

end

###############################################

class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # the same logic in  Customer.all also applies here. Again, I felt as though restaurants don't need to have a review to exist, however they do need a review to know about their customers.
    @@all
  end

  def self.find_by_name(name)
    self.all.detect do |restaurant|
      restaurant.name == name
    end
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
end

###############################################
