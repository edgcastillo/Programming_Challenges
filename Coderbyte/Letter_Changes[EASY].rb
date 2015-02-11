#Letter Changes - Manipulate characters in a string based off their position in the alphabet
#Using the Ruby language, have the function LetterChanges(str) 
#take the str parameter being passed and modify it using the following algorithm. 
#Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). 
#Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string. 
def letterChanges(str)
	new_str = []
	alphabet = ('a'..'z').to_a
	str = str.split('')
	str.each {|x|
		new_str.push(x) unless alphabet.include?(x)
		alphabet.each_index {|index| 
			if(x.eql?(alphabet[index]))
				letter = alphabet[index + 1]
				if(%{a e i o u}.include?(letter))
					letter = letter.upcase
				end
				new_str.push(letter)
			end
		}

	}
	return new_str.join('')
end
p letterChanges("this long cake@&")