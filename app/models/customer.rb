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


#reader for @@all
  def self.all
    @@all
  end

#searches all customers for any instance whose first name matches the name arguement. returns an array of all instances that match
  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

#returns an array of all customers first and last names using the full_name method
  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

#creates an instance of a Review taking in arguements of (an instance of a) restaurant, the review content. adds in instance of self as customer.
  def add_review(restaurant, content)
    Review.new(restaurant, content, self)
  end

end
