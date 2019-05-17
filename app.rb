require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    $game.switch_turn

    redirect '/play'
  end

  get '/play' do
    $game.switch_turn
    @title = "#{$game.player_1.name} vs. #{$game.player_2.name}"
    erb(:play)
  end

  get '/attack' do
    $game.attack($game.opponent)

    redirect '/attack_result'
  end

  get '/attack_result' do
    erb(:attack_result)
  end
end
