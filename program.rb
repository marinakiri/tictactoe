require_relative 'board'
require_relative 'boardcase'
require_relative 'player'
require_relative 'game'

game = Game.new.go

#Main Game Loop

10.times do |turn|

  game.turn

  break if game.is_over

end