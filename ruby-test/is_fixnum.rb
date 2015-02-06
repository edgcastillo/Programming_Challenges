=begin
	Given an array, return true if all the elements are Fixnums.
=end

def array_of_fixnums?(array)
	array.each {|element| return false if !element.is_a?(Fixnum)}
	return true
end


puts array_of_fixnums?([1,2,3]) #=> true
puts array_of_fixnums?(["a",2,:b]) #= false
puts array_of_fixnums?([3,3,"a"]) #=> false
puts array_of_fixnums?([:b,2,3]) #=> false

