require '.spec_helper'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe FoodTruck do
  describe '#initialize' do
    it 'is an instance of FoodTruck' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      
      expect(food_truck).to be_an_instance_of(FoodTruck)
    end
    
    it 'can have a name' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      
      expect(food_truck.name).to eq("Rocky Mountain Pies")
    end
    
    it 'has an inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      
      expect(food_truck.inventory).to eq({})
    end
    
    it 'can check stock inventory by item' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
      
      expect(food_truck.check_stock(item1)).to eq(0)
    end
  end
end

#=> 0

pry(main)> food_truck.stock(item1, 30)

pry(main)> food_truck.inventory
#=> {#<Item:0x007f9c56740d48...> => 30}

pry(main)> food_truck.check_stock(item1)
#=> 30

pry(main)> food_truck.stock(item1, 25)

pry(main)> food_truck.check_stock(item1)
#=> 55

pry(main)> food_truck.stock(item2, 12)

pry(main)> food_truck.inventory
#=> {#<Item:0x007f9c56740d48...> => 55, #<Item:0x007f9c565c0ce8...> => 12}

