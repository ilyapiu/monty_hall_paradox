# frozen_string_literal: true

RSpec.describe MontyHallParadox do
  let(:monty) { described_class.new(10_000, 0) }
  let(:games_will_change) { described_class.new(10_000, 1).simulate}
  let(:games_dont_change) { monty.simulate }

  it 'method simulate returns array' do
    expect(monty.simulate).to be_an_instance_of(Hash)
  end

  it 'method itterate returns true or false' do
    expect(monty.send(:itterate)).to be(false).or(be(true))
  end

  it 'if we will change choose win chance become higher' do
    expect(games_will_change[:victories] > games_dont_change[:victories]).to be(true)
  end


end
