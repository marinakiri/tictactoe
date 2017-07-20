require_relative 'boardcase'
# require_relative 'player'
# require_relative 'game'

class Board

	# include Enumerable

	attr_accessor :array

	def initialize

		# example_array = [
		#   ["X", "O", "X"],
		#   ["O", "O", " "],
		#   ["X", "O", "1"]
		# ]

		@caseA1 = BoardCase.new('A1')
		@caseA2 = BoardCase.new('A2')
		@caseA3 = BoardCase.new('A3')
		@caseB1 = BoardCase.new('B1')
		@caseB2 = BoardCase.new('B2')
		@caseB3 = BoardCase.new('B3')
		@caseC1 = BoardCase.new('C1')
		@caseC2 = BoardCase.new('C2')
		@caseC3 = BoardCase.new('C3')

		@array = []
		@row1 = []
		@row2 = []
		@row3 = []

		@row1 << @caseA1 << @caseB1 << @caseC1
		@row2 << @caseA2 << @caseB2 << @caseC2
		@row3 << @caseA3 << @caseB3 << @caseC3
		@array << @row1 << @row2 << @row3

	end

	def to_s
		#TO DO : afficher le plateau
		@array.map { |row| row.map(&:case_to_s).join(' ') }
	end

	def play
		    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)

	end

	def victory?
		    #TO DO : qui gagne ?

		# A1 A2 A3
		# B1 B2 B3
		# C1 C2 C3
		# A1 B1 C1
		# A2 B2 C2
		# A3 B3 C3
		# A1 B2 C3
		# A3 B2 C1
	end

end

b = Board.new
puts b.to_s