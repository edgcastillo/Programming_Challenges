def max_number(numbers)
	max = numbers[0]
	numbers.each{|x|max < x ? max = x : max}
	return max
end

p max_number([5,3,1,9,4])
p max_number([1.3,5.9,2.3])
p max_number([5,5,5])
p max_number([-10,-5,-1])