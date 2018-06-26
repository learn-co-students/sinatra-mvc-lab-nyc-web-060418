require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinize_user_phrase_instance = PigLatinizer.new
    @piglatinized_phrase = piglatinize_user_phrase_instance.piglatinize(params[:user_phrase])
    erb :piglatinize
  end

end
