#sort characters in a string
def alphabetSoup(str)
	return str.split('').sort().join('')
end

p alphabetSoup("coderbyte")