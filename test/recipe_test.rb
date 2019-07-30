require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test
  def setup
cheese = Ingredient.new("Cheese", "C", 100)

  end
end
