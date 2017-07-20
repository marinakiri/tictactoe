class Player
	attr_accessor :name, :value
	attr_writer :score

	def initialize(name)
		    #TO DO : doit régler son nom, sa valeur, son état de victoire

		@name = name
		@value = X or O
		@score = nil
	end

end