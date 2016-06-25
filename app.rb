require 'sinatra'
require "./lib/wordFactory"
require "./lib/letterEvaluator"

def initApp!
	@@hiddenWord = WordFactory.new.getDefault
	@@letterEvaluator = LetterEvaluator.new(@@hiddenWord)
	@@remainingLives = 5
end

get '/' do
	initApp!
	@placeholder = @@letterEvaluator.placeholder
    erb :index
end

post '/' do
	@lastLetter = params[:letter]
	result = @@letterEvaluator.try(@lastLetter)
	if not result
		@@remainingLives = @@remainingLives - 1
	end
	@placeholder = @@letterEvaluator.placeholder


    erb :index
end
