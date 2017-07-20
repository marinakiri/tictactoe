class Board
	include Enumerable
	attr_accessor :array

	def initialize
		@array = Array.new

		@array << BoardCase.new('A1')
		@array << BoardCase.new('A2')
		@array << BoardCase.new('A3')
		@array << BoardCase.new('B1')
		@array << BoardCase.new('B2')
		@array << BoardCase.new('B3')
		@array << BoardCase.new('C1')
		@array << BoardCase.new('C2')
		@array << BoardCase.new('C3')


	end

	def to_s
		  #TO DO : afficher le plateau

		
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