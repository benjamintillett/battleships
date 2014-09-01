require 'battle_ship.rb'

describe BattleShip do 

	it "initializes with a health of 2" do 
		battle_ship = BattleShip.new
		expect(battle_ship.health).to eq 4
	end

	it "ship has a name" do
		battle_ship = BattleShip.new
		expect(battle_ship.name).to eq "BattleShip"
	end

end