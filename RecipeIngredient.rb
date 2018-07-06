class RecipeIngredient

@@all = []

attr_reader :recipe
attr_accessor :ingredient

def initialize(args)
  @recipe = args[:recipe]
  @ingredient = args[:ingredient]
  @@all << self
end

def self.all
  @@all
end

def ingredient
  @ingredient
end

def recipe
  @recipe
end



end
