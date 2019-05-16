require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])

    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    @title = "#{@player_1.name} vs. #{@player_2.name}"
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1.attack(@player_2)

    redirect '/attack_result'
  end

  get '/attack_result' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:attack_result)
  end
end
