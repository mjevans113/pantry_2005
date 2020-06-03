class Cookbook
  attr_reader :recipes, :ingredients
  def initialize
    @recipes = []
    @ingredients = []
  end

  def add_recipe(recipe)
    @recipes << recipe
    recipe.ingredients_required.each do |ingredient|
      @ingredients << ingredient[0].name unless @ingredients.include?(ingredient[0].name)
    end
  end

  def highest_calorie_meal
    most_calories = @recipes.map do |recipe|
      recipe.total_calories
    end.max
    @recipes.find {|recipe| recipe.total_calories == most_calories}
  end
end
