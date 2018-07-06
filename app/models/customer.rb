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

  # this method I'm having issues getting to pass. I think the issue has to do with my test cases, though not sure what exactly
  def add_review(restaurant, content)
    new_review = Review.new(restaurant, self, content)
  end

  def self.find_by_name(name)
    names = Customer.all.select do |customer|
      customer.full_name == name
    end
    names[0]
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

  def self.all
    @@all
  end

end
