require './char_count'

describe "char_count" do
	it "accepts a string and outputs most and least characters" do 
		expect(char_count("supercalifragilisticexpialidocious")).to eq("7 'i', 1 'd'")
	end
	it "accepts a string and outputs most and least characters" do 
		expect(char_count("technicolor dreamcoat")).to eq("3 'c', 1 ' '")
	end
	it "downcases capital letters before counting" do 
		expect(char_count("Hello")).to eq("2 'l', 1 'e'")
	end
	it "returns the character with the lowest code point in the event of a tie" do 
		expect(char_count("aabbbii")).to eq("3 'b', 2 'a'")
	end
	it "accepts characters from any language" do 
		expect(char_count("テクニカラードリームコート")).to eq("3 'ー', 1 'カ'")
	end
end

