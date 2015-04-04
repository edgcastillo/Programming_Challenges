def reverse(str)
	ar = []
	(0..str.length).each do |x|
		ar.push(str[str.length - x])
	end
	return ar.join('')
end

puts reverse("string")
puts reverse("Hello! World")