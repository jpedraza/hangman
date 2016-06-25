require 'sinatra'
require "./lib/wordFactory"
require "./lib/letterEvaluator"

def initApp!
	@@hiddenWord = WordFactory.new.getDefault
	@@letterEvaluator = LetterEvaluator.new(@@hiddenWord)
	@@remainingLives = 5
	@@endingMessage = ""
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
		if @@remainingLives < 1
			@@endingMessage = "Lo siento, ha perdido el juego!"
		end 
	end

	@placeholder = @@letterEvaluator.placeholder
	
	gameWon = !(@@letterEvaluator.placeholder.include? "_")
	if gameWon
		@@endingMessage = "Felicitaciones completo la palabra!"
	end

    erb :index
end
