# frozen_string_literal: true

class MontyHallPromblem
  RANGE = (1..3).freeze

  def simulate(change)
    choice = rand(RANGE)
    car_door = rand(RANGE)
    empty_door = RANGE.to_a.select { |e| ![car_door, choice].include?(e) }.sample
    choice = RANGE.to_a.select { |e| ![empty_door, choice].include?(e) }.sample if change == 1
    choice == car_door
  end

  def itterate(itterations, change)
    win = 0
    lose = 0
    itterations.times do
      simulate(change) ? win += 1 : lose += 1
    end

    [win, lose]
  end
end
