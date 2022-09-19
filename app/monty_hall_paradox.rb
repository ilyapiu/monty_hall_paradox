# frozen_string_literal: true

class MontyHallParadox
  
  RANGE = (1..3).freeze

  def initialize(itterations, will_change)
    @itterations = itterations
    @will_change = will_change
  end

  def simulate
    win,lose = 0, 0
    itterations.times do
      itterate ? win += 1 : lose += 1
    end
    { victories: win, defeates: lose }
  end
  
  private
  attr_reader :itterations, :will_change 
  def itterate
    choice = rand(RANGE)
    car_door = rand(RANGE)
    empty_door = RANGE.to_a.select { |e| ![car_door, choice].include?(e) }.sample
    choice = RANGE.to_a.select { |e| ![empty_door, choice].include?(e) }.sample if will_change == 1
    choice == car_door
  end
end
