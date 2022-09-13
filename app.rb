def monty_paradoxe (first_choice, change  )
  car_door = rand(1..3)
  empty_door = rand(1..3)
  while (first_choice == empty_door || car_door == empty_door) 
    empty_door = rand(1..3)
  end
  choice = first_choice
  if change == 1
    loop do
      choice = rand(1..3)
      break if choice != first_choice and choice != empty_door
    end
  end

  return choice == car_door 

end

win = 0
lose = 0

ARGV[0].to_i.times do
  if monty_paradoxe(rand(1..3), ARGV[1].to_i)
    win += 1
  else
    lose += 1
  end  
end
 
puts "Всего побед #{win}, а поражений #{lose}"