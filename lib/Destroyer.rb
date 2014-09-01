require_relative 'ship'

class Destroyer < Ship

	attr_reader :name

	SIZE = 3
	
	def initialize
		super SIZE
		@name = "Destroyer"
	end



end