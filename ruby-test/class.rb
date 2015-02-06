class Pet
	def speak(sound)
		Kernel.puts(sound)
	end

	def dog_race(race)
		Kernel.puts "Your dog's race is: " + race
	end

	def dog_color(color)
		Kernel.puts "Your dog's color is: " + color
	end
	
end

class Marker
	def set_color(my_color)
		@color = my_color
	end

	def write
		Kernel.puts("I am writing with a #{@color} marker!")
	end

end