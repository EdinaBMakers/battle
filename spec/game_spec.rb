require 'game'

describe Game do
  let(:subject) { Game.new }
  let(:player) { double :player }

  describe '#attack' do
    it 'damages the attacked player' do
      expect(player).to receive(:receive_damage)
      subject.attack(player)
    end
  end
end
