#Traverse string and determines if there is equal amount of certain characters
def exOh(str)
	countO = 0
	countX = 0
	str.split('').each{|x| countO += 1 if(x == "o")}
	str.split('').each{|y| countX += 1 if(y == "x")}

	return countO == countX

end

p exOh("oxoooxo")