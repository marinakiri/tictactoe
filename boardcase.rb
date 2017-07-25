require 'pry'

class BoardCase
	attr_accessor :position, :value

	def initialize(position)
		@position = position
		@value = ''
	end

	def value_to_s
		if @value == '' 
			return "[#{@position}]"
		else 
			return "[ #{@value} ]"
		end
	end

end


#binding.pry
