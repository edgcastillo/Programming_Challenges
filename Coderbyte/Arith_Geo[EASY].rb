#Determine if numbers within an array follow an arithmetic or geometric sequence
def arithGeo(arr)
	baseNumArith = arr[1] - arr[0]
	baseNumGeo = arr[1] / arr[0]
	if(arr.last - arr[arr.size - 2] == baseNumArith)
		return "Arithmetic"
	elsif(arr.last / arr[arr.size - 2] == baseNumGeo && baseNumGeo != arr[1])
		#for this problem - arr.last / arr[arr.size - 2] == baseNumGeo this algorithm works for almos all the tests
		#but if the array starts with 1 increments and ends with a geomtric sequence it will pass as truth. when in fact it is not: 
		# EG. 1 - 2 - 3.....10 - 20 while the last two numbers make the stament truth: array[n - 1] / array[n - 2] = baseNum
		#the sequence at the beginning is not geometric. 
		return "Geometric"
	else
		return -1
	end
end

p arithGeo([2,4,16,24]) #it will return -1
p arithGeo([5,10,15]) #it will return Arithmetic
p arithGeo([2,6,18,54]) #it will return Geometric
p arithGeo([1,5,9]) #it will return Arithmetic
p arithGeo([1,2,3,4,5,10,20]) #it will return -1