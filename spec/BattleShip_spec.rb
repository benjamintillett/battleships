require 'BattleShip.rb'

describe BattleShip do 

	it "initializes with a health of 2" do 
		battleship = BattleShip.new
		expect(battleship.health).to eq 4
	end

it "ship has a name" do
	battleship= BattleShip.new
	expect(battleship.name).to eq "BattleShip"

end

end