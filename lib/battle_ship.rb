require_relative 'ship'

class BattleShip < Ship

	attr_reader :name

	SIZE = 4
	
	def initialize
		super SIZE
		@name = "BattleShip"
	end




end