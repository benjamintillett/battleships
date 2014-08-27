require 'board'

class Player 

	attr_reader :board, :name
	
	def initialize(name= "NoName")
		@board = Board.new({})
		@name = name
	end



end