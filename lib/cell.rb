require 'cell'

class Cell
	
	def initialize
		@content = :water
		@hit = false
		@shot = false
	end

	def hit?
		@hit
	end


	def content
		@content 
	end

	def add_ship!
		@content = :ship
	end

	def shoot!
		@shot = true
	end

	def shot?
		@shot
	end




end