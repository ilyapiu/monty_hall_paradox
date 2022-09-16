# frozen_string_literal: true

require_relative 'monty_hall_problem'

GAMES = ARGV[0].to_i
WILL_CHANGE = ARGV[1].to_i

games_result = MontyHallPromblem.new(GAMES, WILL_CHANGE).itterate()
puts "Количество выигрышей #{games_result[:victories]}, a количество проигрышей #{games_result[:defeates]}"
