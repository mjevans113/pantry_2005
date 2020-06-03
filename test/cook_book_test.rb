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
end
