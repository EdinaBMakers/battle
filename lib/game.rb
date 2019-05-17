class Game
  attr_reader :player_1, :player_2, :current_turn, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
    @opponent = opponent_of(@current_turn)
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_turn = opponent_of(@current_turn)
    @opponent = opponent_of(@opponent)
  end

  def opponent_of(player)
    player == player_1 ? player_2 : player_1
  end
end
