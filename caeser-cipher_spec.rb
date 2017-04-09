require_relative 'caeser-cipher'

describe "caeser-cipher" do
	it "shifts a letter by a given key" do
		expect(caeser_cipher("a",1)).to eq("b")
	end
	
	it "shifts a word by a given key" do
		expect(caeser_cipher("hello",2)).to eq("jgnnq")
	end
	
	it "preserves white spaces" do
		expect(caeser_cipher("hello world",2)).to eq("jgnnq yqtnf")
	end
	
	it "preserves capital letters and special characters" do
		expect(caeser_cipher("Hello World!",2)).to eq("Jgnnq Yqtnf!")
	end
	
	it "wraps around the alphabet" do
		expect(caeser_cipher("z",1)).to eq("a")
	end
	
	it "shifts by a large factor" do
		expect(caeser_cipher("Hello World!",1738)).to eq("Dahhk Sknhz!")
	end
end
