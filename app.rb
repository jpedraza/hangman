require 'sinatra'
require "./lib/wordFactory"

@@word = WordFactory.new.getDefault

get '/' do
	@word = @@word
    erb :index
end

post '/' do
	@word = @@word
	@lastLetter = params[:letter]
    erb :index
end
