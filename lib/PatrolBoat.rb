require_relative 'ship'

class PatrolBoat < Ship
	
	attr_reader :name

	SIZE = 2
	
	def initialize
		super SIZE
		@name = "Patrol Boat"
	end


end