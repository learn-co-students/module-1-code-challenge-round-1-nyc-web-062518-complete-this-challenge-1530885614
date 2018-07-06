class Customer

  attr_accessor :first_name, :last_name, :full_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = "#{@first_name} #{@last_name}"
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_customer_name)
    self.all.find do |customer|
      customer.full_name.downcase == full_customer_name.downcase
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name.downcase == name.downcase
    end
  end

  def self.all_names
    self.all.map do |customer|
    customer.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(restaurant, self, content)
  end

end




class Review

  attr_reader :restaurant, :customer, :content

  @@all = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
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

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name.downcase == name.downcase
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

end
