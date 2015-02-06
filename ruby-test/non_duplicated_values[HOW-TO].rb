=begin
Given an Array, return the elements that are present exactly once in the array.	
=end

def non_duplicated_values(array)
	non_repeated_elements = []
	array.each {|element| non_repeated_elements << element if array.count(element) == 1}
	non_repeated_elements
end


p non_duplicated_values([1,2,2,3,3,4,5]) #returns [1,4,5]
p non_duplicated_values([1,2,2,3,4,4]) #returns [1,3]
p non_duplicated_values([5,3,2,1,1,1,3,5]) #returns [2]