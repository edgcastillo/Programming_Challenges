#First Factorial - find the factorial of a given number
def factorial(number)
	factorial = 1
	(1..number).each do |x|
		factorial *= x
	end
	return factorial
end
puts factorial(5)