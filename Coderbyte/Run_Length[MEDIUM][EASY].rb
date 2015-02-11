=begin
	Using the Ruby language, have the function RunLength(str) 
	take the str parameter being passed and return a compressed version of the string using 
	the Run-length encoding algorithm. This algorithm works by taking the occurrence of each 
	repeating character and outputting that number along with a single character of the repeating sequence. 
	For example: "wwwggopp" would return 3w2g1o2p. The string will not contain any numbers, punctuation, 
	or symbols.
=end



def run_length(str)
	alphabet = ('a'..'z').to_a
	str = str.split('')
	x = alphabet.index(str[0])
	counter = 0
	new_str = []
	str.each_with_index {|letter, index| 
		if(letter == alphabet[x])
			counter += 1
		else
			new_str << "#{counter}#{alphabet[x]}"
			x = alphabet.index(letter)
			new_letter = "#{letter}"
			counter = 1
		end
		
	}
	 new_str << "#{counter}#{alphabet[x]}"
	 return new_str.join('')
end


puts run_length("aabbcc")
puts run_length("coolthree")
puts run_length("abqq")