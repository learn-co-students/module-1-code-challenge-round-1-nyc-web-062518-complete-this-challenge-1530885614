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
# need to check the rubydoc for find method, the code seems not DRY enough
  def self.find_by_name(full_name)
    self.all.find? do |first_name,last_name|
      customer.first_name == self.first_name && customer.last_name == self.last_name
    end
  end

  def self.find_all_by_first_name (first_name)
    self.all.select do |first_name|
      customer.first_name == self.first_name
    end
  end

  def self.all_names
    self.all.map do |full_name|
      customer.full_name == self.full_name
    end
  end

  def add_review (restaurant,content)
    Review.new (self,restaurant,content)
    # running out of time, forgot how to associate the Review and Customer and Restaurant
  end

end
