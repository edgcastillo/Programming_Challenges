def fibonacci(number)
	fibo = 0
	number1 = 0
	number2 = 1
	sum = 0
	while(fibo < number)
		if(fibo < 2)
			fibo += 1
		else
			if(fibo % 2 == 0)
				sum += fibo
			end
			number1 = number2
			number2 = fibo
			fibo = (number2 + number1)
		end
	end
	return sum
end


puts fibonacci(4000000)