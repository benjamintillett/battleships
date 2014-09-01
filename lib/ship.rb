class Ship

  def initialize(size = 1)
    @size = size
  	@health = size
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