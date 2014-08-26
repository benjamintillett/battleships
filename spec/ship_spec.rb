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

end