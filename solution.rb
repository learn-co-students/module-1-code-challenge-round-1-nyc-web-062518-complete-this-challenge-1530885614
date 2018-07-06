# Please copy/paste all three classes into this file to submit your solution!
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
  	@@all
  end

  def self.find_by_name(name)
  	name_array = name.split(" ")
  	firstname = name_array[0]
  	lastname = name_array[1]
  	self.all.find do |customer| 
  		customer.first_name == firstname
  		customer.last_name == lastname
  	end
  end

 	def self.find_all_by_first_name(name)
  	self.all.select do |customer| 
  		customer.first_name == name
  	end
  end

  def add_review(restaurant, content)
  	Review.new(content, self, restaurant)
  end

  def self.all_names
  	self.all.map {|customer| customer.full_name}
  end

end

class Review
	
	attr_accessor :customer, :restaurant, :content

	@@all = []

	def initialize(content, customer, restaurant)
		@content = content
		@customer = customer
		@restaurant = restaurant
		@@all << self
	end

	def self.all
		@@all
	end

end

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
  	self.reviews.map{|review|review.customer}
  end

  def self.find_by_name(name)
  	self.all.find do |restaurant|
  		restaurant.name == name
  	end
  end

end




