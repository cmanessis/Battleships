require 'sinatra/base'
require 'battleships'

class BattleshipsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  set :session_secret, 'secret'

  get '/' do
      erb :index
    end

    get '/new_game' do
      erb :new_game
    end

    post '/new_game' do
      $player1 = params[:player1]
      $player2 = params[:player2]

      if $player1 != '' && $player2 != ''
        $game1 = Game.new Player, Board
        redirect '/board_setup'

      else
        @msg_color = 'red'
        @error_msg = 'error!!:No name has been entered.'
        erb :new_game
      end
    end

  get '/board_setup' do
    $game1.own_board_view $game1.player_1
    erb :board_setup
  end

  post '/board_setup' do
    $ship = params[:ship]
    $coordinate = params[:coordinate]
    $direction = params[:direction]
    $game1.player_1.place_ship Ship.battleship, $coordinate, $direction
    erb :board_setup
  end

  get '/start_game' do
    erb :start_game
  end



  set :views, proc { File.join(root, '..', 'views') }
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
