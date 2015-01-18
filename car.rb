class Car
	def get_info
		return "I'm a car. I've driven #{@distance} miles and have #{@fuel} gallons of gas left"
	end

	def initialize
		Kernel.puts("the initialize method is running automatically")
		@fuel = 10
		@distance = 0
	end

	def drive(miles)
		@distance = @distance + miles
		@fuel = @fuel - ( miles / 20.0 )
		if(@fuel <= 0)
			Kernel.puts("You're out of gas!!! Time to fuel up")
			@fuel = 0
			fuel_up
		end
	end

	def fuel_up
		@cost = 3.50
		while(@fuel < 10)
			@fuel = @fuel + 1
			@cost = @cost + 3.50
		end
		Kernel.puts("The cost of Gas is $3.50/gallon. Your total is #{@cost} dollars!")
	end

end