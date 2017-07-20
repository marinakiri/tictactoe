require_relative 'board'
require_relative 'boardcase'
require_relative 'player'

class Game

	def initialize
		@board = Board.new
	    @playerX = Player.new('PlayerX','X')
	    @playerO = Player.new('PlayerO','O')
	end

	def start
		
	end

	def turn
		    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie

	end

end