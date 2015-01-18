

def fizzbuzz(x, y, z)
	number = 1
	while(number <= z)
		if(number % x == 0 && number % y == 0)
			print "FB"
		elsif(number % x == 0)
			print "F"
		elsif(number % y == 0)
			print "B"
		else
			print "#{number}"
		end
		 if(number != z)
		 	print " "
		 end
		number += 1
	end
end


print fizzbuzz(2,7,15)