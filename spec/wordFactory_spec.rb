require "./lib/wordFactory"

describe 'Word factory' do
	it 'debe retornar murcielago por defecto' do
		factory = WordFactory.new
		word = factory.getDefault()
		expect(word).to eq "murcielago"
	end
end
