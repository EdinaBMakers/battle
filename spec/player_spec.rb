require 'player'

describe Player do
  let(:alice) { Player.new("Alice") }
  let(:bob) { Player.new("Bob") }

  it 'has a name' do
    expect(alice.name).to eq("Alice")
  end

  it 'has max hit point' do
    expect(alice.hit_points).to eq(60)
  end

  it 'damages the player' do
    expect(bob).to receive(:receive_damage)
    alice.attack(bob)
  end

  it "reduces attacked player's hit points" do
    expect { bob.receive_damage }.to change { bob.hit_points }.by(-10)
  end
end
