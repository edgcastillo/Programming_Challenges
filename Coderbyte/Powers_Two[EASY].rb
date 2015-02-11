#take num parameter being passed which will be an integer and return true if 
#it's a power of two. if it's not return false
def powersOfTwo(num)
	return false if(num % 2 != 0)
	return true if( num / 2 == 1)
	powersOfTwo(num / 2)

end

p powersOfTwo(124) #false
p powersOfTwo(16) #true
p powersOfTwo(22) #false
p powersOfTwo(1024) # => true
p powersOfTwo(128) # => true