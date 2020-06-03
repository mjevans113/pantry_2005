require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/cook_book'

class CookbookTest < MiniTest::Test
  def test_it_exists
    cookbook = Cookbook.new

    assert_instance_of Cookbook, cookbook
  end

  def test_it_starts_empty
    cookbook = Cookbook.new

    assert_equal [], cookbook.recipes
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
end
