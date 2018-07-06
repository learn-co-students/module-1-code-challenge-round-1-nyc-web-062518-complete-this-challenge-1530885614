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

  def self.find_by_name(name)
  	self.all.select do |find_name|
  		find_name.name == name 
  	end
  end

  def reviews
  	binding.pry
  	

  end

  def customers
  	# Customer.all.map do |customer|

  end

end
