

def first_1000_primes(range)
	primes = []
	(2..range).each do |x|
		primes.push(x)
	end

	puts primes.length




end

puts first_1000_primes(31)

