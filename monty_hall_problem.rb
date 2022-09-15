class MontyHallPromblem
  RANGE = 1..3

  def simulate (change)
    first_choice = rand(RANGE)
    car_door = rand(RANGE)
    empty_door = rand(RANGE)
    while (first_choice == empty_door || car_door == empty_door) 
      empty_door = rand(RANGE)
    end
    choice = first_choice
    if change == 1
      while(choice == first_choice || choice == empty_door)
        choice = rand(RANGE)
    end
  end

  return choice == car_door 

  end

  def itterate (itterations, change)
    win = 0
    lose = 0
  
    itterations.times do
      if simulate(change)
        win += 1
      else
        lose += 1
      end  
    end
   
    puts "Всего побед #{win}, а поражений #{lose}"
  end

end