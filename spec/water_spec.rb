require 'water'

describe Water do

	it "should know when it has been shot at" do
		water = Water.new
		expect(water.receive_shot).to eq "Splash"
	end

end