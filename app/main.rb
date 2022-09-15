# frozen_string_literal: true

require_relative 'monty_hall_problem'

GAMES = ARGV[0].to_i
CHANGE = ARGV[1].to_i

monty = MontyHallPromblem.new
arr = monty.itterate(GAMES, CHANGE)
puts "Количество выигрышей #{arr[0]}, a количество проигрышей #{arr[1]}"
