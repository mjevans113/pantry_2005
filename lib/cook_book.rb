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
end
