require "./lib/letterEvaluator"

describe LetterEvaluator do
	it "should return _ _ _ _ _ _ _ a _ _ when word is murcielago and letter is a" do
		letterEvaluator = LetterEvaluator.new("murcielago")
		letterEvaluator.try("a")
		expect(letterEvaluator.placeholder).to eq ["_","_","_","_","_","_","_","a","_","_"]
	end
	it "should initialize a placeholder" do
		letterEvaluator = LetterEvaluator.new("murcielago")
		expect(letterEvaluator.placeholder).to eq ["_","_","_","_","_","_","_","_","_","_"]
	end
	it "should return if the letter was found" do
		letterEvaluator = LetterEvaluator.new("murcielago")
		result = letterEvaluator.try("a")
		expect(result).to eq true
	end
	it "should return if the letter was not found" do
		letterEvaluator = LetterEvaluator.new("murcielago")
		result = letterEvaluator.try("z")
		expect(result).to eq false
	end
end 
