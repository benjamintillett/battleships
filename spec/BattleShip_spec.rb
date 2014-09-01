require 'BattleShip.rb'

describe BattleShip do 

	it "initializes with a health of 2" do 
		Bship = BattleShip.new
		expect(Bship.health).to eq 4
	end

it "ship has a name" do
	Bship= BattleShip.new
	expect(Bship.ShipsName).to eq "BattleShip"

end

end