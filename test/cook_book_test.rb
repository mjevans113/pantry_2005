require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/cook_book'
require './lib/ingredient'

class CookbookTest < MiniTest::Test
  def test_it_exists
    cookbook = Cookbook.new

    assert_instance_of Cookbook, cookbook
  end

  def test_it_has_readable_attributes
    cookbook = Cookbook.new

    assert_equal [], cookbook.recipes
    assert_equal [], cookbook.ingredients
  end

  def test_recipes_can_be_added
    cookbook = Cookbook.new
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")

    cookbook.add_recipe(recipe1)
    assert_equal [recipe1], cookbook.recipes

    cookbook.add_recipe(recipe2)
    assert_equal [recipe1, recipe2], cookbook.recipes
  end

  def test_ingredients_are_added
    cookbook = Cookbook.new
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient2, 8)

    recipe2 = Recipe.new("Cheese Burger")
    ingredient3 = Ingredient.new({name: "Ground Beef", unit: "oz", calories: 100})
    ingredient4 = Ingredient.new({name: "Bun", unit: "g", calories: 75})
    recipe2.add_ingredient(ingredient1, 2)
    recipe2.add_ingredient(ingredient3, 4)
    recipe2.add_ingredient(ingredient4, 1)

    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)

    assert_equal ['Cheese', 'Macaroni', 'Ground Beef', 'Bun'], cookbook.ingredients
  end
end
