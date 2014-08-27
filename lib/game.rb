class Game

attr_reader :board1, :board2, :players
attr_accessor :player1, :player2

def initialize(board1,board2)
	@players = {}
	@board1 = board1
	@board2 = board2
end

def add_players(player1, player2)
	@players[player1] = @board1
	@players[player2] = @board2
end





end