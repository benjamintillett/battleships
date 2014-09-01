

class Board

	attr_reader :cells
	attr_accessor  :in_play, :health, :game_over

	def initialize(grid_size)
		@cells = Grid.new(grid_size).cells
		@health = 0
		@in_play = false
		@game_over = false

	end

	def add_ship_to(x_coordinate,y_coordinate,ship)
		raise RuntimeError ,"Game is in play, you can no longer place ships" if in_play?
		cell(x_coordinate,y_coordinate).add_ship!(ship)

		self.health +=1
		self
	end

	def add_ship_towards_right(x_coordinate, y_coordinate, ship)
		(0...ship.health).each do |n|
			add_ship_to(y_coordinate, (x_coordinate + n),ship)			
		end

		# add_ship_to((x_coordinate + 1),y_coordinate,ship)
		# add_ship_to((x_coordinate + 2),y_coordinate,ship)
	end

	def shoot_cell(x_coordinate,y_coordinate)
		raise RuntimeError , "Game has not started!!!" unless in_play? 
		cell(x_coordinate,y_coordinate).shoot!
		decrement_health
	end

	def cell(x_coordinate,y_coordinate)
		@cells[x_coordinate,y_coordinate]
	end

	def in_play?
		@in_play
	end

	def start_playing!
		self.in_play = true
		self
	end

	def game_over?
		@game_over
	end

	def decrement_health
		self.health -=1
		self.game_over = true if health == 0 
	end

end