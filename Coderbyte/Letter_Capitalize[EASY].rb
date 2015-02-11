#Letter Capitalize - For this challenge you will be capitalizing first word of each char in a string.
def letterCapitalize(str)
	#str = str.split(' ')
	#str.map! {|word| word.capitalize}
	#str.join(' ')
	str.split(' ').map! {|word| word.capitalize}.join(' ')
end

p letterCapitalize("i am legend")