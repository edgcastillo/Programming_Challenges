def largest_prime_factor(num)
	prime_factor_numbers = []
	Prime.each(num) do |prime|
		prime_factor_numbers.push(prime) if(num / prime != Float)
	end
	prime_factor_numbers
end

p largest_prime_factor(13195)