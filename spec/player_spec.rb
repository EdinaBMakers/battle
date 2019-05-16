require 'player'

describe Player do
  let(:alice) { Player.new("Alice") }
  let(:bob) { Player.new("Bob") }

  describe '#name' do
    it "returns player's name" do
      expect(alice.name).to eq("Alice")
    end
  end

  describe '#hit_points' do
    it "returns player's hit points" do
      expect(alice.hit_points).to eq(60)
    end
  end

  describe '#attack' do
    it 'damages the attacked player' do
      expect(bob).to receive(:receive_damage)
      alice.attack(bob)
    end
  end

  describe '#receive_damage' do
    it "reduces the player's hit points" do
      expect { bob.receive_damage }.to change { bob.hit_points }.by(-10)
    end
  end
end
