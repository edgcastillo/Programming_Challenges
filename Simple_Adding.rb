#Simple Adding - adding up all the numbers from 1 to n
def adding(num)
	sum = 0
	(1..num).each do |x|
		sum += x
	end
	return sum
end

p adding(8)