require 'AircraftCarrier.rb'

describe AircraftCarrier do 

	it "initializes with a health of 3" do 
		Aircraft_Carrier = AircraftCarrier.new
		expect(Aircraft_Carrier.health).to eq 5
	end

it "ship has a name" do
	Aircraft_Carrier = AircraftCarrier.new
	expect(Aircraft_Carrier.ShipsName).to eq "Aircraft Carrier"

end

end