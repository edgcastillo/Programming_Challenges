def numberAddition(str)
	sum = 0
	str = str.split(/[^0-9]/).map{|x| sum += x.to_i if(x.to_i.is_a?(Numeric))}
	return sum

end

p numberAddition("75Number9")
