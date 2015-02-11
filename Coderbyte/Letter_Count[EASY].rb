
#Determine which word has the greatest numbers of repeated letters
def letterCountI(str)
	# count = 0
	# mostRepeatedLetters = ''
	# str = str.split('').each{|letter| 
	# 	if(str.count(letter) > count)
	# 		count = str.count(letter)
	# 		mostRepeatedLetters = str
	# 	end
	# }
	# return mostRepeatedLetters

	letterCount = 0
	letterMaxWord = ''
	str = str.split(' ').each{|word| word.split('').each{|letter| 
		if(word.downcase.count(letter) > letterCount)
			letterCount = word.downcase.count(letter)
			letterMaxWord = word
		end
		}}
	letterCount > 1 ? (return letterMaxWord) : (return -1)
	
end

p letterCountI("Hello apple pie") #returns Hello
p letterCountI("No word") #returns -1
p letterCountI("Banana Bananarama cocomelococo") #returns Bananarama