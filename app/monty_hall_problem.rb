# frozen_string_literal: true

class MontyHallPromblem
  RANGE = (1..3).freeze

  def simulate(change)
    first_choice = rand(RANGE)
    car_door = rand(RANGE)
    empty_door = rand(RANGE)
    empty_door = rand(RANGE) while first_choice == empty_door || car_door == empty_door
    choice = first_choice
    choice = rand(RANGE) while choice == first_choice || choice == empty_door if change == 1

    choice == car_door
  end

  def itterate(itterations, change)
    win = 0
    lose = 0
    itterations.times do
      if simulate(change)
        win += 1
      else
        lose += 1
      end
    end

    [win, lose]
  end
end
