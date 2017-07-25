require_relative 'boardcase'
require 'pry'
# require_relative 'player'


class Board
	attr_accessor :caseA1, :caseA2, :caseA3, :caseB1, :caseB2, :caseB3, :caseC1, :caseC2, :caseC3
	@@table = []
	@@row1
	@@row2
	@@row3

	def initialize
		@caseA1 = BoardCase.new('A1')
		@caseA2 = BoardCase.new('A2')
		@caseA3 = BoardCase.new('A3')
		@caseB1 = BoardCase.new('B1')
		@caseB2 = BoardCase.new('B2')
		@caseB3 = BoardCase.new('B3')
		@caseC1 = BoardCase.new('C1')
		@caseC2 = BoardCase.new('C2')
		@caseC3 = BoardCase.new('C3')

		@@table = []
		@@row1 = []
		@@row2 = []
		@@row3 = []

		@@row1 << @caseA1 << @caseB1 << @caseC1
		@@row2 << @caseA2 << @caseB2 << @caseC2
		@@row3 << @caseA3 << @caseB3 << @caseC3
		@@table << @@row1 << @@row2 << @@row3

	end

	def to_s
	
		@@table.each do |row|
			row.each do |boardcase|
				print boardcase.value_to_s
			end
			puts ""
		end
		
	end

	def play(player,boardcase_played)

# #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
# 		@symbol # le symbole du player en cours
# 		@move # la case jouée correspond à l'input du player dans game.rb
# 		@position # move doit correspondre à une position
# 		@value # la case jouée prend pour valeur le symbole du player en cours
	end

# 	def victory
# 		#TO DO : qui gagne ?
# 		# méthode Claire : faire des sum_table, si somme = 3, joueurX gagne
# 		# méthode Marina : faire des arrays playerX_moves et playerO_moves, 
# 		# voir si les arrays contiennent une combinaison gagnante :
# 		# A1 A2 A3
# 		# B1 B2 B3
# 		# C1 C2 C3
# 		# A1 B1 C1
# 		# A2 B2 C2
# 		# A3 B3 C3
# 		# A1 B2 C3
# 		# A3 B2 C1
# 	end

end

#binding.pry