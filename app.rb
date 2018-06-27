require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_word = PigLatinizer.new
    @pig_word.piglatinize(params[:user_phrase])
  end

end
