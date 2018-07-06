class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(argument)
    @first_name = argument[:first_name]
    @last_name  = argument[:last_name]
    @@all << self
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name_text)
    # returns only first object match by full name(text)
    all.find {|customer| customer.full_name.downcase == full_name_text.downcase}

  end

  def self.find_all_by_first_name(first_name_text)
    # returns all objects by matching first name(text)
    all.select {|customer| customer.first_name.downcase == first_name_text.downcase}
  end

  def self.all_names
    # returns array of full names(text)
    all.map {|customer| customer.full_name}
  end

  def add_review(restaurant, content_text)
    # adds new review (text) of restaurant(object) for that specific customer
    # method is called on
    Review.new(customer: self, restaurant: restaurant, content_text: content_text)
  end

end

###################################################################

class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(argument)
    @name = argument[:name]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name_text)
    # returns only first object match by name-text
    all.find {|restaurant| restaurant.name == name_text}
  end

  def reviews
    #all reviews for that specific restaurant
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    #all customers for that specific restaurant method called on
    reviews.map {|review| review.customer}
  end
end

#########################################################

class Review

  attr_accessor :customer, :restaurant, :content_text
  @@all = []

  def initialize(argument)
    @customer = argument[:customer]
    @restaurant = argument[:restaurant]
    @content_text = argument[:content_text]
    @@all << self
  end

  def self.all
    @@all
  end

end
