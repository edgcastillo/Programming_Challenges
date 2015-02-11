=begin
Using the Ruby language, have the function MultiplicativePersistence(num) 
take the num parameter being passed which will always be a positive 
integer and return its multiplicative persistence which is the number of times 
you must multiply the digits in num until you reach a single digit. For example: if
num is 39 then your program should return 3 because 3 * 9 = 27 then 2 * 7 = 14 and 
finally 1 * 4 = 4 and you stop at 4. 

=end
def multiplicative_persistence(num)
	return 0 if num <= 9
	persistence_counter = 0
	single_digit = false
	while(single_digit == false)
		num = num.to_s.split('').inject(1){|result,number| result * number.to_i}
		persistence_counter += 1
		if(num <= 9)
			single_digit = true
		end
	end
	persistence_counter
end

puts multiplicative_persistence(39) #=> 3
puts multiplicative_persistence(25) #=> 2