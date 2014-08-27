require 'game'

describe Game do 
	# let(:board1) { double :board }
	# let(:board2) { double :board }
	#let(:game) {Game.new(board1, board2)}
	let(:player1) {double :player}
	let(:player2) {double :player}
	let(:game) {Game.new(player1, player2)}

	it "can be initialised with two players" do 
		expect(game.player1).to eq player1
		expect(game.player2).to eq player2
	end


	xit "can be created with two boards" do 
		expect(game.board1).to eq board1
		expect(game.board2).to eq board2
	end

	xit "can add players" do 
		game.add_players(player1, player2)
		expect(game.players.count).to eq 2
	end


end





# intitialize boards /
# initialize player one 
# set player ones details
# initialize player 2 details 
# set player 2 details
# intialize ship and ask for location at the same time 
