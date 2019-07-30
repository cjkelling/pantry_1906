class Recipe
  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] = amount
  end

  def amount_required(item)
    if item.name == @ingredients_required.keys[0].name
      @ingredients_required.values[0]
    elsif item.name == @ingredients_required.keys[1].name
      @ingredients_required.values[1]
    end
  end

  def ingredients
    @ingredients_required.keys
  end

  def total_calories
    @ingredients_required.map { |ingredient| ingredient[0].calories * ingredient[1] }.sum
  end
end
