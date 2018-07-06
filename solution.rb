# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def all
    @@all
  end

  def find_by_name
    ["#{full_name}"].first
  end

  def find_all_by_first_name
    @all."{first_name}"
  end

  def all_names
    @all.self.full_name
  end

  def add_review(restaurant, content)
    Restaurant.content.new @@self

  end

end


class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
  end

  def all
    @@all
  end

  def find_by_name

  end

  def method_name

  end

  # more methods - need more time


end


class Review
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def all
    @@all
  end

  def review_customer

  end

  def review_restaurant

  end



end
