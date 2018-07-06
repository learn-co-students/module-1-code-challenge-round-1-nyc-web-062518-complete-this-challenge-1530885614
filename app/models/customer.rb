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
