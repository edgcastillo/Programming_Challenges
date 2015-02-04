# 9 is a Kaprekar number since 
# 9 ^ 2 = 81 and 8 + 1 = 9

# 297 is also Kaprekar number since 
# 297 ^ 2 = 88209 and 88 + 209 = 297.

# In short, for a Kaprekar number k with n-digits, 
# if you square it and add the right n digits to the left n or n-1 digits, 
# the resultant sum is k. 

def kaprekar?(k)	
	sqr_k = (k ** 2).to_s.split('')
	#if(sqr_k.size <= 4)
	num_right = sqr_k.slice!(sqr_k.size / 2..-1)
	num_left = sqr_k
	#else
		#num_right = sqr_k.slice!(k.to_s.size - 1..-1)
		#num_left = sqr_k
	#end
	(num_left.join('').to_i + num_right.join('').to_i == k) ? "#{k} is Kaprekar" : "#{k} is not Kaprekar"

	
end

p kaprekar?(9)
p kaprekar?(45)
p kaprekar?(297)
p kaprekar?(703)
p kaprekar?(2223)
p kaprekar?(4879) #this case is particular as is the only one that I don't get the desired output, it should be Kaprekar!
p kaprekar?(17344)
p kaprekar?(538461)