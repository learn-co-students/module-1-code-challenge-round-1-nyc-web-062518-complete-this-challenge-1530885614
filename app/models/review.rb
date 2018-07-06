require 'pry'
class Review

  @@all = []

  attr_accessor :customer, :restaurant

  def self.all
    @@all
  end

end
