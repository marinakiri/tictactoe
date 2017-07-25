require_relative 'board'
require_relative 'boardcase'
require_relative 'player'
require 'pry'

class Game
	attr_accessor :players, :board

	def initialize
		puts "Player 1, type your name, you will have a X"
		playerX_name = gets.chomp.to_s

		puts "Player 2, type your name, you will have a O"
		playerO_name = gets.chomp.to_s

    @players =[]
    playerX = Player.new('PlayerX','X')
    playerO = Player.new('PlayerO','O')
    @players << playerX
    @players << playerO
    @board = Board.new

	end

	def go
		@next_player = playerX
	end

	def turn
# TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, 
# passe au joueur suivant si la partie n'est pas finie

#Afficher le plateau

		@board.to_s
		
		# puts "#{player} : Which case would you like to play ? "
		
		# chosen_case_position = gets.chomp.to_s.upcase!
		# chosen_case = Boardcase.new(chosen_case_position)

		# if chosen_case.value != '' do 
		# 	puts "Case already played. Please choose another case :"
		# 	chosen_case_position = gets.chomp
		# 	chosen_case = Boardcase.new(chosen_case_position)
		# else 
		# 	chosen_case.value = 'X' #faire varier en fonction du player playerX ou autre
		# end

		# puts chosen_case.value

	end

	def is_over
	end

end

binding.pry