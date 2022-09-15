require_relative "monty_hall_problem"

GAMES = ARGV[0].to_i
CHANGE = ARGV[1].to_i

monty = MontyHallPromblem.new()
monty.itterate(GAMES,CHANGE.to_i)