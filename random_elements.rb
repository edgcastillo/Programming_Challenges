=begin
	Create a method 'random_select' which, 
	when given an array of elements (array) and a number (n), 
	returns n randomly selected elements from that array.

	Given an array [1, 2, 3, 4, 5] and 2 should return two random numbers from the given array. 
	(Note: those two random numbers may be the same number.) 
	The method should return those random values in a new array.

	This is one of the RubyMonk exercises
	
=end

def random_select(array, n)
	result = []
	(1..n).each do
		result << array[rand(array.length)]
	end
	result
end



p random_select([1,2,3,4,5],2)