require 'aircraft_carrier.rb'

describe AircraftCarrier do 

	it "initializes with a health of 3" do 
		aircraft_carrier = AircraftCarrier.new
		expect(aircraft_carrier.health).to eq 5
	end

	it "ship has a name" do
		aircraft_carrier = AircraftCarrier.new
		expect(aircraft_carrier.name).to eq "Aircraft Carrier"
	end

end