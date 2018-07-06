class Review

  attr_accessor :customer, :restaurant, :content_text
  @@all = []

  def initialize(argument)
    @customer = argument[:customer]
    @restaurant = argument[:restaurant]
    @content_text = argument[:content_text]
    @@all << self
  end

  def self.all
    @@all
  end

  # accessor defines method for customer and restaurant
  # as long as initialized correctly with instance and not text
  # Review.all[0].customer --> jon --> instance/object of custoemr
  # Review.all[0].restaurant --> chipotle --> instance/object of restaurant

end
