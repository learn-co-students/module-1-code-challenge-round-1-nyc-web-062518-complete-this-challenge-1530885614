
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
