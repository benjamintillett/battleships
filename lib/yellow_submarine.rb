require_relative 'ship'

class YellowSubmarine < Ship

	attr_reader :name

	SIZE = 3

	def initialize
		super SIZE
		@name = "submarine"
	end

end
