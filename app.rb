require 'sinatra'
require "./lib/wordFactory"

@@word = WordFactory.new.getDefault

get '/' do
	@word = @@word
    erb :index
end
