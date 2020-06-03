class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(item)
    @stock[item]
  end

  def restock(item, quantity)
    @stock[item] += quantity
  end

  def enough_ingredients_for?(recipe)
    enough = @stock.map do |ingredient, quantity|
      quantity <= recipe.ingredients_required[ingredient]
    end
    if enough.include?(false)
      false
    else
      true
    end
  end
end
