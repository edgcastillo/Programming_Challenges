def countingMinutes(str)
	counter = 0
	time = str.scan(/\d{2}/)
	meridian = str.scan(/["am"|"pm"]{2}/)
	meridian[0] == meridian[1] ? counter = 24 : counter = 12
	
	
	
	
end

p countingMinutes("12:30pm-12:00am")