class Pantry
  attr_reader :stock
  def initialize
    @stock = {}
  end

  def stock_check(item)
    @stock.find_all {|ingredient| ingredient.name == item.name}.count
  end
end
