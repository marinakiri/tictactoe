require_relative 'board'
require_relative 'boardcase'
require_relative 'game'

class Player

	attr_accessor :name, :value
	attr_writer :score

	def initialize(name, pawn)
		    #TO DO : doit régler son nom, sa valeur, son état de victoire

		@name = name
		@pawn = pawn
		@score = nil
	end

end