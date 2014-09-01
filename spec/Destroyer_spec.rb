require 'destroyer.rb'

describe Destroyer do 

	it "initializes with a health of 3" do 
		destroyerboat = Destroyer.new
		expect(destroyerboat.health).to eq 3
	end

it "ship has a name" do
	destroyerboat = Destroyer.new
	expect(destroyerboat.name).to eq "Destroyer"
end

end