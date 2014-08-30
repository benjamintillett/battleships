
class Cell

	attr_accessor :content, :shot

	def initialize(content=Water.new)	 
		@content = content
		@shot = false
	end

	def add_ship!(ship)
		self.content = ship
	end

	def shoot!
		raise RuntimeError ,"This grid has already been shot! Try another grid! u muppit" if shot?
		self.shot = true
		content.receive_shot!
	end

	def shot?
		@shot
	end


end