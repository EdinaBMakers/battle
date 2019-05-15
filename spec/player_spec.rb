require 'player'

describe Player do
  it 'has a name' do
    expect(Player.new("Alice").name).to eq("Alice")
  end
end
