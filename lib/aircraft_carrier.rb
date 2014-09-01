require_relative 'ship'

class AircraftCarrier < Ship

	attr_reader :name

	SIZE = 5
	
	def initialize
		super SIZE
		@name = "Aircraft Carrier"
	end


end
