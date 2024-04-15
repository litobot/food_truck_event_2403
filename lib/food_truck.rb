class FoodTruck
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
  end

  def check_stock(item)
    item[:stock] = 0
  end
  
end

# I am completely stuck on trying to figure out how to 
# add a key of stock and a value of '0' to the item1 hash object.

# I'm just freezing up 100%
