require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        pig=PigLatinizer.new()
       @last_response=pig.piglatinize(params[:user_phrase])

        erb :view
    end

end