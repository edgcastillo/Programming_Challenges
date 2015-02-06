=begin
	Project 1: Cesar Cipher
	In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, 
	Caesar's code or Caesar shift, is one of the simplest and most widely known 
	encryption techniques. It is a type of substitution cipher in which each letter in the 
	plaintext is replaced by a letter some fixed number of positions down the 
	alphabet. For example, with a left shift of 3, D would be replaced by A, E would 
	become B, and so on. The method is named after Julius Caesar, who used it in 
	his private correspondence.

	Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string
=end
	
end

def cesar_cipher(string, position)
	alphabet = ('a'..'z').to_a
	string = string.split('')
	string.each_with_index {|letter, index|
		if(alphabet.include?(letter.downcase))
			alphabet_index = alphabet.find_index(letter.downcase) # Enumerable find_index will find the postion of the letter in the alphabet array
			if(alphabet_index + position > alphabet.size)
				alphabet_index = position - (alphabet.size - alphabet_index) 
				string[index] = alphabet[alphabet_index]
			elsif
				string[index] = alphabet[alphabet_index + position]
			end
		end
																									 


	}

	return string.join('').to_s.capitalize
end


puts cesar_cipher("What a string!", 5)
puts cesar_cipher("What a day!", 5)