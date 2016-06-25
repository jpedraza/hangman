require "./lib/letterEvaluator"

describe LetterEvaluator do
	before(:each) do
		@letterEvaluator = LetterEvaluator.new("murcielago")
	end
	it "should return _ _ _ _ _ _ _ a _ _ when word is murcielago and letter is a" do
		@letterEvaluator.try("a")
		expect(@letterEvaluator.placeholder).to eq "_ _ _ _ _ _ _ a _ _"
	end
	it "should initialize a placeholder" do
		expect(@letterEvaluator.placeholder).to eq "_ _ _ _ _ _ _ _ _ _"
	end
	it "should return if the letter was found" do
		result = @letterEvaluator.try("a")
		expect(result).to eq true
	end
	it "should return if the letter was not found" do
		result = @letterEvaluator.try("z")
		expect(result).to eq false
	end
end 
