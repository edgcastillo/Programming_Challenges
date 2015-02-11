#Determine if numbers in an array can add up to a certain number in the array
def arrayAdditionI(arr)
	arrSum = 0
	largestNum = arr.sort.pop
	arr.each{|x| arrSum += x if(x < largestNum) }
	if(arrSum >= largestNum || arr.include?(arrSum - largestNum))
		return true
	else 
		return false
	end
end

p arrayAdditionI([4,6,23,10,1,3]) #it is true
p arrayAdditionI([5,7,16,1,2]) #it is false
p arrayAdditionI([31,2,90,50,7]) #it is true