class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(argument)
    @first_name = argument[:first_name]
    @last_name  = argument[:last_name]
    @@all << self
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name_text)
    # name is full name, customer stores as first
    # and last, join name and return first
    # instance of class with match - (use detect or find)
    # can also leave blank(implicit), or use self instead of Customer


    # Customer.all.find do |customer|
    #   #use full_name method that is defined above
    #   customer.full_name == full_name_text
    #   # customer.first_name + " " + customer.last_name == full_name_text
    # end
    # only returns the first match, not all
    ### redefine to not make case sensitive
    all.find {|customer| customer.full_name.downcase == full_name_text.downcase}

  end

  def self.find_all_by_first_name(first_name_text)
    # find by first name, return all
    # ( use find all or select)
    # Customer.all.select do |customer|
    #   customer.first_name == first_name_text
    # end
    # returns all by first
    # #########redefine to not make case sensitive
    all.select {|customer| customer.first_name.downcase == first_name_text.downcase}
  end

  def self.all_names
    # return array of all customer full names
    # Customer.all.map do |customer|
    #   # customer.first_name + " " + customer.last_name
    #   # use full_name method above
    #   customer.full_name
    # end

    all.map {|customer| customer.full_name}
    #case sensitive depending on original input/initialize

  end

  def add_review(restaurant, content_text)
    # given a restaurant object(instance) and content(text,string)
    Review.new(customer: self, restaurant: restaurant, content_text: content_text)
  end






end
