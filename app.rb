require 'sinatra'
require "./lib/wordFactory"
require "./lib/letterEvaluator"

@@hiddenWord = WordFactory.new.getDefault
@@letterEvaluator = LetterEvaluator.new(@@hiddenWord)


get '/' do
	@placeholder = @@letterEvaluator.placeholder
    erb :index
end

post '/' do
	@lastLetter = params[:letter]
	@@letterEvaluator.try(@lastLetter)
	@placeholder = @@letterEvaluator.placeholder
    erb :index
end
