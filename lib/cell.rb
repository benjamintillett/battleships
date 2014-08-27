require 'water'

class Cell

	def initialize(content=Water.new)
		 
		@content = content
		@hit = false
		@shot = false
	end

	def content
		@content 
	end

	def add_ship!(ship)
		@content = ship
	end

	def shoot!
		raise RuntimeError ,"This grid has already been shot! Try another grid! u muppit" if shot?
		@shot = true
		@content.receive_shot!
	end

	def shot?
		@shot
	end
end