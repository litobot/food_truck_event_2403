require 'spec_helper'

RSpec.configure do |config|
  config.formatter = :documentation
end

RSpec.describe Event do
  describe '#initialize' do
    it 'is an instance of Event' do
      event = Event.new("South Pearl Street Farmers Market")
      
      expect(event).to be_an_instance_of(Event)
    end

    it 'has a name' do
      event = Event.new("South Pearl Street Farmers Market") 
      
      expect(event.name).to eq("South Pearl Street Farmers Market")
    end
  end
  
  it 'has food trucks at the event' do
    event = Event.new("South Pearl Street Farmers Market") 
    
    food_truck1 = FoodTruck.new("Rocky Mountain Pies")
    
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
    item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
    
    expect(event.food_trucks).to eq([])
  end

  # food_truck1.stock(item1, 35)    

  # pry(main)> food_truck1.stock(item2, 7)    

  # pry(main)> food_truck2 = FoodTruck.new("Ba-Nom-a-Nom")    
  # #=> #<FoodTruck:0x00007fe1349bed40...>

  # pry(main)> food_truck2.stock(item4, 50)    

  # pry(main)> food_truck2.stock(item3, 25)

  # pry(main)> food_truck3 = FoodTruck.new("Palisade Peach Shack")    
  # #=> #<FoodTruck:0x00007fe134910650...>

  # pry(main)> food_truck3.stock(item1, 65)  

  # pry(main)> event.add_food_truck(food_truck1)    

  # pry(main)> event.add_food_truck(food_truck2)    

  # pry(main)> event.add_food_truck(food_truck3)

  # pry(main)> event.food_trucks
  # #=> [#<FoodTruck:0x00007fe1348a1160...>, #<FoodTruck:0x00007fe1349bed40...>, #<FoodTruck:0x00007fe134910650...>]

  # pry(main)> event.food_truck_names
  # #=> ["Rocky Mountain Pies", "Ba-Nom-a-Nom", "Palisade Peach Shack"]

  # pry(main)> event.food_trucks_that_sell(item1)
  # #=> [#<FoodTruck:0x00007fe1348a1160...>, #<FoodTruck:0x00007fe134910650...>]

  # pry(main)> event.food_trucks_that_sell(item4)
  # #=> [#<FoodTruck:0x00007fe1349bed40...>]

  # pry(main)> food_truck1.potential_revenue
  # #=> 148.75

  # pry(main)> food_truck2.potential_revenue
  # #=> 345.00

  # pry(main)> food_truck3.potential_revenue
  # #=> 243.75  
end