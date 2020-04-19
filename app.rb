require_relative 'config/environment'
#require_relative 'piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end 
  
  post '/piglatize' do
    @latinized = PigLatinizer.new(params[:user_phrase])
    
    erb :results
  end 
end