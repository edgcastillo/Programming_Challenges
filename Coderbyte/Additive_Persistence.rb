=begin
Using the Ruby language, have the function AdditivePersistence(num) 
take the num parameter being passed which will always be a positive integer
and return its additive persistence which is the number of times you must add the digits in num 
until you reach a single digit. For example: if num is 2718 then 
your program should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop at 9	
=end

def additive_persistence(num)
	# return 0 if num <= 9
	# numArr = num.to_s.split('')
	# sum = numArr.inject(0) {|result, element| result + element.to_i}
	# if(sum >= 10)
	# 	sum = sum.to_s.split('').inject(0){|result, element| result + element.to_i}
	# end
	return 0 if num <= 9
	numArr = num.to_s.split('')
	persistence_counter = 0
	single_digit = false
	while(single_digit == false)
		sum = numArr.inject(0) {|result, element| result + element.to_i}
		persistence_counter += 1
		if(sum <= 9)
			single_digit = true
		else
			numArr = sum.to_s.split('')
			sum = 0
		end
	end

	persistence_counter


end

puts additive_persistence(2718) #=> 2
puts additive_persistence(19) #=> 2
puts additive_persistence(4) #=> 0

