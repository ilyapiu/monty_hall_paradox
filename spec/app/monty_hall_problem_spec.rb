# frozen_string_literal: true

RSpec.describe MontyHallPromblem do
  let(:monty) { described_class.new }
  let(:arr_will_change) { monty.itterate(10_000, 1) }
  let(:arr_dont_change) { monty.itterate(10_000, 0) }

  it 'method itterate returns array' do
    expect(monty.itterate(10_000, 1)).to be_an_instance_of(Array)
  end

  it 'method simulate returns true or false' do
    expect(monty.simulate(1)).to be(false).or(be(true))
  end

  it 'if we will change choose win chance become higher' do
    expect(arr_will_change[0] > arr_will_change[1]).to be(true)
  end

  it 'if we will change choose, win chance become higher' do
    expect(arr_will_change[0] > arr_will_change[1]).to be(true)
  end

  it 'if we dont change choose, win chance become lower' do
    expect(arr_dont_change[0] < arr_dont_change[1]).to be(true)
  end
end
