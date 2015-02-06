def vowelCount(str)
	count = 0
	str = str.split('').each{|x| count += 1 if(%(a e i o u).include?(x))}
	return count
end

p vowelCount("coderbyte")