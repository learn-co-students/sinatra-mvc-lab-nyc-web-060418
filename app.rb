require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end
  post '/piglatinize' do
    pl = PigLatinizer.new
    @pig_lat_inst= pl.piglatinize(params[:user_phrase])

    erb :result
  end

end
