require 'sinatra/base'
require './lib/rps.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    @player_name = params[:player_name]
    erb :play

  end
  
  run! if app_file == $0
end