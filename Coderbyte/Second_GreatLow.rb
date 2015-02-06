#Take array of numbers stored in arr and return the second lowest and second greatest numbers
def secondGreatLow(arr)
	return "#{arr[0]}" + " " + "#{arr[1]}" if(arr.size == 2)
	min, max = arr.min, arr.max
	arr = arr.sort{|a,b| a <=> b}.delete_if{|x| x == min || x == max}
	return "#{arr[0]}" + " " + "#{arr[-1]}"




	



end

p secondGreatLow([7,12,7,98,106])
p secondGreatLow([1,42,42,180])
p secondGreatLow([4,60,7,188])
p secondGreatLow([90,23])