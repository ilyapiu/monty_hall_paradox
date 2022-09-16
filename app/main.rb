# frozen_string_literal: true

require_relative 'monty_hall_paradox'

GAMES = ARGV[0].to_i
WILL_CHANGE = ARGV[1].to_i

games_result = MontyHallParadox.new(GAMES, WILL_CHANGE).simulate
puts "Количество выигрышей #{games_result[:victories]}, a количество проигрышей #{games_result[:defeates]}"
