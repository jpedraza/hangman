require 'sinatra'

@@word = "murcielago"

get '/' do
	@word = @@word
    erb :index
end
