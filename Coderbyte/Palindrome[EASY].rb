#Determine if a string is written the same way forwards and backwards
def palindrome(str)
	return str.gsub(' ', '') == str.gsub(' ', '').reverse
end

p palindrome("never odd or even")