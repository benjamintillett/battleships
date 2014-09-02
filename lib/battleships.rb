require 'sinatra/base'

class BattleShips < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/name' do 
  	erb :name
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
