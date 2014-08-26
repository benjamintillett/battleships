class Ship

  def initialize
  	@health = 2
  	@sunk = false
  end

  def health
  	@health
  end

  def sustaindamage!
  	@health -= 1
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