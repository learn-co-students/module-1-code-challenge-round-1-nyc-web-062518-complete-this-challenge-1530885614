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

  def self.find_by_name(full_name)
    name_array = full_name.split(" ")
    self.all.find do |first_name,last_name|
      customer.first_name == self.first_name && customer.last_name == self.last_name
    end
  end

  def self.find_all_by_first_name (first_name)
    self.all.select do |first_name|
      customer.first_name == self.first_name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review (restaurant,content)
    Review.new(self,restaurant,content)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurant
    reviews.map do |review|
      review.restaurant
    end
  end


end
