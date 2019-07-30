class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(item)
    @stock[item]
  end

  def restock(item, amount)
    @stock[item] += amount
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.each do |ingredients|
      p @recipe_name = ingredients[0].name
      p @recipe_amount = ingredients[1]
    end
    @stock.each do |item|
      p @stock_name = item[0].name
      p @stock_amount = item[1]
    end
    (@recipe_name == @stock_name) && (@recipe_amount <= @stock_amount)
  end
end
