def append(ary, n)
	return ary if n < 0
	ary.push(n)
	append(ary, n-1)
end

p append([], 2)
p append([], 5)

def reverse_append(ary, n)
	return ary if n < 0
	reverse_append(ary, n-1)
	ary.push(n)
end

p reverse_append([], -1)
p reverse_append([],  0)
p reverse_append([],  1)
p reverse_append([],  2)


def fibonacci(n)
	return n if(n <= 1)
	fibonacci(n - 1) + fibonacci(n - 2)	
end

p fibonacci(0) # => 0
p fibonacci(10) # => 55

def powersOfTwo(num)
	return false if(num % 2 != 0)
	return true if( num / 2 == 1)
	powersOfTwo(num / 2)
	
end

p powersOfTwo(1024) # => true
p powersOfTwo(128) # => true

