def divisionStringified(num1,num2)
	result = num1 / num2
	counter = 0
	resultToString = result.to_s.reverse.split('').each_with_index{|a,i| 
		if(counter == 3)
			a.prepend(',')
			counter = 0
		end
		counter += 1 
	}

	return resultToString.join('').reverse

	
end

p divisionStringified(12345678999999, 10000)

#this program is incomplete as is not passing all of the coderbytes tests