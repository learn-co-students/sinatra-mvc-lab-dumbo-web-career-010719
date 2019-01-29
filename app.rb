require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		
		erb :user_input
	end

	post '/piglatinize' do

		pigword = PigLatinizer.new
		@word = pigword.piglatinize(params["user_phrase"].to_s)

		erb :result
	end

end