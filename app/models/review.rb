class Review

	@@all = []

	attr_reader :restaurant, :customer

	def initialize(restaurant, customer, content)
		@restaurant = restaurant
		@customer = customer
		@content = content
		@@all << self
	end

	def self.all
  		@@all
  	end

  	def customer
  		@customer
  	end

  	def restaurant
  		@restaurant
  	end
end

