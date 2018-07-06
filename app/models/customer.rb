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
