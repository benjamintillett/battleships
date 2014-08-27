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
  	ship.receive_shot!
  	expect(ship.health).to eq 1
  end

  it "Should sink once it has taken enough damage" do 
  	ship.health.times {ship.receive_shot!}
  	expect(ship).to be_sunk
  end
end