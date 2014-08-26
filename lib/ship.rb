class Ship

  def initialize
  	@health = 2
  	@sunk = false
  end

  def health
  	@health
  end

  def sustain_damage!
  	@health -= 1
  	sink! if @health == 0
  	self
  end

  def sunk?
    @sunk
  end

  def sink!
    @sunk = true
  end

   def locations
  	@locations
   end

  def place_at!(coordinates: [])
    @locations = coordinates
  end

end