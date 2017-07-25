require_relative 'board'
require_relative 'boardcase'
require_relative 'player'

class Game

	def initialize
	    @playerX = Player.new('PlayerX','X')
	    @playerO = Player.new('PlayerO','O')
	    @board = Board.new
	end

	def start
		@next_player = playerX
	end

	def turn
# TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, 
# passe au joueur suivant si la partie n'est pas finie
		
		puts "#{player} : Which case would you like to play ? "
		
		chosen_case_position = gets.chomp.to_s.upcase!
		chosen_case = Boardcase.new(chosen_case_position)

		# if chosen_case.value != '' do 
		# 	puts "Case already played. Please choose another case :"
		# 	chosen_case_position = gets.chomp
		# 	chosen_case = Boardcase.new(chosen_case_position)
		# else 
		# 	chosen_case.value = 'X' #faire varier en fonction du player playerX ou autre
		# end

		puts chosen_case.value

	end

end