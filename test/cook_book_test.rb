require 'minitest/autorun'
require 'minitest/pride'
require './lib/recipe'
require './lib/cook_book'

class CookbookTest < MiniTest::Test
  def test_it_exists
    cookbook = Cookbook.new

    assert_instance_of Cookbook, cookbook
  end
end
