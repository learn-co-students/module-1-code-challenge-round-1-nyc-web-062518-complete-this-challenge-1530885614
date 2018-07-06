class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all #should return **all** of the customer instances
    @@all
  end

  def self.find_by_name(name) #given a string of a **full name**, returns the **first customer** whose full name matches
    Review.all.find do |review|
      if review.customer.full_name == name
        review.customer.full_name #stack level too deep
      end
    end
  end

  def self.find_all_by_first_name(name)#given a string of a first name, returns an **array** containing all customers with that first name
    Review.all.collect do |review|
      if review.customer.first_name == name
        review.customer.first_name #stack level too deep
      end
    end
  end

  def self.all_names#should return an **array** of all of the customer full names
    Review.all.collect do |review|
        review.customer.full_name #stack level too deep
      end
    end
  end

  def add_review(restaurant, content)
    #given a **restaurant object** and some review content (as a string),
    #creates a new review
    review = Review.new(review, self, restaurant)
    #associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`
  end
end
