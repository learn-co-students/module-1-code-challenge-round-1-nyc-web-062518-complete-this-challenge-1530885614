require 'pry'
class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    # given a string of a **full name**,
    # returns the **first customer** whose full name matches

    ## iterate through the .find method to find the first full name
    ## that matches the criteria. If not, keep looping through to find
    ## a name that matches. If no name matches, return 'false'
    name = Customer.new("Ann", "Kim")
      name.find.first do |name|
        if name.find.first = "Ann Kim"
          return name
        else
          return false
        end
      end
  end

  def self.find_all_by_first_name(name)
    # given a string of a first name,
    # returns an **array** containing all customers with that first name

    ## use the class variable @@all to grab all the instances of the class
    ## Customer. From there, call on the helper method full_name and use
    ## .map to iterate through a loop that will find the first name with
    ## using the argument name
    self.all

    end

  def self.all_names
    # should return an **array** of all of the customer full names

    ## usee the class variable @@all to grab the instance of the Class
    ## Customer. From there, use the helper method full_name and then
    ## shovel it into the class variable @@all to return an array of
    ## all the customer's full name
    self.all

  end

  def add_review(restaurant, content)
    # given a **restaurant object** and some review content (as a string),
    #  creates a new review and
    # associates it with that customer and restaurant.
    # A `Review` belongs to a `Customer` and belongs to a `Restaurant`

    ## Use the restaurant object and iterate it through .map to create a new review and .new
    ## Insert the argument

    rest1 = Restaurant.new("New_Restaurant")

  end

end
