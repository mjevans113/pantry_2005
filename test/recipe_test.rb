require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'

class RecipeTest < MiniTest::Test
  def test_it_exists
    recipe1 = Recipe.new("Mac and Cheese")

    assert_instance_of Recipe, recipe1
  end

  def test_it_has_readable_attributes
    recipe1 = Recipe.new("Mac and Cheese")

    assert_equal 'Mac and Cheese', recipe1.name
  end
end