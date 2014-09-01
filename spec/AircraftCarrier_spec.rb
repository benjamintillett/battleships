require 'AircraftCarrier.rb'

describe AircraftCarrier do 

	it "initializes with a health of 3" do 
		aircraftcarrier = AircraftCarrier.new
		expect(aircraftcarrier.health).to eq 5
	end

it "ship has a name" do
	aircraftcarrier = AircraftCarrier.new
	expect(aircraftcarrier.name).to eq "Aircraft Carrier"

end

end