require 'sinatra'
require "./lib/wordFactory"

@@hiddenWord = WordFactory.new.getDefault

get '/' do
	@hiddenWord = @@hiddenWord
	@word = "_ _ _ _ _ _ _ _ _ _"
    erb :index
end

post '/' do
	@hiddenWord = @@hiddenWord
	@lastLetter = params[:letter]
	@word = "_ _ _ _ _ _ _ a _ _"

    erb :index
end
