=begin
	Project 3 Substrings
	Implement a method #substrings that takes a word as the first argument 
	and then an array of valid substrings (your dictionary) as the second 
	argument. It should return a hash listing each substring (case insensitive) 
	that was found in the original string and how many times it was found.
=end

def substrings(string, dictionary)
	word_recurrence = Hash.new(0)
	string = string.split(" ")
	p string
	dictionary.each {|word| 
		if(string.include?(word))
			word_recurrence[word] += 1
		end
		if(string.size > 1)
			string.each {|string_word| 
				if(string_word.downcase.include?(word))
					word_recurrence[word] += 1
				end
			}
		end
		
	}

	p word_recurrence

end

dictionary =["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below", dictionary) # => {"below"=>1, "low"=>1}
substrings("Howdy partner, sit down! How's it going?", dictionary) #=> {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}