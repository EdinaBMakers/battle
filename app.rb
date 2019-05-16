require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)

    redirect '/play'
  end

  get '/play' do
    @title = "#{$game.player_1.name} vs. #{$game.player_2.name}"
    erb(:play)
  end

  get '/attack' do
    $game.attack($game.player_2)

    redirect '/attack_result'
  end

  get '/attack_result' do
    erb(:attack_result)
  end
end
