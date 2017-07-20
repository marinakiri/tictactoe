# require_relative 'board'
# require_relative 'player'
# require_relative 'game'

class BoardCase

	attr_accessor :position, :state

	def initialize(position)
		@position = position
		@state = ''
	end

	def case_to_s
		if @state == 'X'
			print '[ X ]'
		elsif @state == 'O'
			print '[ O ]'
		else print '[   ]'
		end
	end

end

