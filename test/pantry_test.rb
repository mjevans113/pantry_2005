require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < MiniTest::Test
  def setup
    @pantry = Pantry.new
  end

  def test_it_exists
    assert_instance_of Pantry, @pantry
  end

  def test_it_starts_with_empty_stock
    assert_equal ({}), @pantry.stock
  end

  def test_it_can_check_stock
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_equal 0, @pantry.stock_check(ingredient1)
  end

  def test_it_can_restock
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})

    @pantry.restock(ingredient1, 5)
    assert_equal 5, @pantry.stock_check(ingredient1)

    @pantry.restock(ingredient1, 10)
    assert_equal 15, @pantry.stock_check(ingredient1)

    @pantry.restock(ingredient2, 7)
    assert_equal 7, @pantry.stock_check(ingredient2)
  end
end
