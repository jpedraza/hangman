class LetterEvaluator
	def initialize(word)
		@word = word.chars
		@placeholder = []
		word.length.times do
			@placeholder.push "_"
		end
	end
	def try(letter)
		found = false
		@word.each_with_index do |wordLetter, index|
			if letter == wordLetter
				@placeholder[index] = letter				
				found = true
			end
		end
		found
	end
	def placeholder
		@placeholder
	end
end
