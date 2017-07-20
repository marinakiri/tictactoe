require_relative 'board'
require_relative 'boardcase'
require_relative 'player'

class Game

	def initialize
		Player.new('player1','X')
		Player.new('player2','O')
		# Board.new
	end

	def go
		    # TO DO : lance la partie

	end

	def turn
		    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie

	end

end