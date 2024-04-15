require 'spec_helper'

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
      # Does it get initialized with an inventory? (attribute?)
        # Or is this a separate method?
    end
    
  end

  it 'can add stock inventory by item' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    
    expect(food_truck.check_stock(item1)).to eq(0)
    # I want to return '0' when I call a method called #check_stock on food_truck
    # Do I need to 

    food_truck.stock(item1, 30)
    
    expect(food_truck.inventory).to eq({item1: 30})

    food_truck.stock(item1, 25)
    
    expect(food_truck.check_stock(item1)).to eq(55)

    food_truck.stock(item2, 12)

    expect(food_truck.inventory).to eq({item1: 55, item2: 12})
  end

end


