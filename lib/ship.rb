class Ship

  def initialize(health = 2)
  	@health = health
  	@sunk = false
  end

  def health
  	@health
  end

  def receive_shot!
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


end