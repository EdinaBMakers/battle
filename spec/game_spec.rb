require 'game'

describe Game do
  let(:subject) { Game.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#player_1' do
    it 'returns player 1' do
      expect(subject.player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it 'returns player 2' do
      expect(subject.player_2).to eq(player_2)
    end
  end

  describe '#attack' do
    it 'damages the attacked player' do
      expect(player_2).to receive(:receive_damage)
      subject.attack(player_2)
    end
  end
end
