require 'ship'

describe Ship do

let(:ship) { Ship.new }

  it "Ship: on initialization, ship is not sunk (FALSE)" do
    expect(ship).not_to be_sunk
    #ship object created as true
  end

  it "Ship: can be sunk (TRUE)" do
    ship.sink!
    expect(ship).to be_sunk
    #changing sunk status from false > true
  end

  it "Should initialize with a default amount of health" do
  	expect(ship.health).to eq 2
  end

  it "Should know when it has been damaged" do
  	ship.sustaindamage!
  	expect(ship.health).to eq 1
  end


  # it "should know how many hits it has taken" do
  # 	ship.sustaindamage(1)
  # 	expect ship.health to eq 
  # end

  # it "should know "

  # it "Should be able to store a location" do
  # 	ship.place_at!(coordinates: [:A1, :A2])
  # 	expect(ship.locations).to eq [:A1, :A2]
  # end

  # it "Should be able to store a location" do
  # 	ship.place_at!(coordinates: [:B1, :B2])
  # 	expect(ship.locations).to eq [:B1, :B2]
  # end

  # it "Should know if it has been hit" do 
  # 	ship.


end