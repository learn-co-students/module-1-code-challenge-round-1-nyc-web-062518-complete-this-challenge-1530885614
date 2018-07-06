class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
    @count = 0
  end

  def self.all
  	@@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
  	new_name = name.split
  	self.all.select do |find_name|
  		find_name.first_name == new_name[0]
  	end
  end


  def self.find_all_by_first_name(name)
  	#returns an **array** containing all customers with that first name
  	first_names = []
  	new_name = name.split
  	#binding.pry
  	first_names = self.all.map do |find_name|
  		find_name.first_name
  	end

  	first_names.map do |name|
  		first_names == new_name
  	end

  end

  def add_review(restaurant, customer, content)
  	Review.new(restaurant, self, content)
  end


end
