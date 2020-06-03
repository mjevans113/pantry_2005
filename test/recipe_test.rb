require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < MiniTest::Test
  def test_it_exists
    recipe1 = Recipe.new("Mac and Cheese")

    assert_instance_of Recipe, recipe1
  end

  def test_it_has_readable_attributes
    recipe1 = Recipe.new("Mac and Cheese")

    assert_equal 'Mac and Cheese', recipe1.name
    assert_equal ({}), recipe1.ingredients_required
  end

  def test_it_can_add_ingredients
    recipe1 = Recipe.new("Mac and Cheese")
    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})

    recipe1.add_ingredient(ingredient1, 2)

    assert_equal ({ingredient1 => 2}), recipe1.ingredients_required
  end
end
