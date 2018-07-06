class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(argument)
    @name = argument[:name]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name_text)
    # string for name, return first restaurant object/instance match
    # Restaurant.all.find do |restaurant|
    #   restaurant.name == name_text
    # end

    # returns only first match, redefine to not make case sensitive
    Restaurant.all.find {|restaurant| restaurant.name.downcase == name_text.downcase}
  end

  def reviews
    # go through review model all to return reviews that match
    # # that restaurant instance/self

    # Review.all.select do |review|
    #   review.restaurant == self
    # end

    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    # go through review model all to return reviews that match
    # that restaurant instance/self (already defined as reviews)
    # then go through those reviews for that restaurant and get
    # customers that made the review (gives customers for that
    # restaurant through review link)

    # self.reviews.map do |review|
    #   review.customer
    # end

    reviews.map {|review| review.customer}
  end
end
