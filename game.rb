require_relative 'board'
require_relative 'boardcase'
require_relative 'player'
require 'pry'

class Game
	attr_accessor :players, :board, :current_player

	def initialize
		puts "Player 1, type your name, you will have a X"
		playerX_name = gets.chomp.to_s

		puts "Player 2, type your name, you will have a O"
		playerO_name = gets.chomp.to_s

    @players =[]
    playerX = Player.new(playerX_name,'X')
    playerO = Player.new(playerO_name,'O')
    @players << playerX
    @players << playerO
    @current_player = @players[0]
    @board = Board.new

	end

	def go
		
		10.times do |i|
		
			puts "turn number #{i+1}"

			turn
			
			break if @board.victory == true

			@current_player = players[(i+1)%2]
			
		end

		#@next_player = playerX
	end

	def turn()
# TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, 
# passe au joueur suivant si la partie n'est pas finie

#Afficher le plateau
		puts "C'est au tour de #{@current_player.name} de jouer !"
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

end

binding.pry