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

