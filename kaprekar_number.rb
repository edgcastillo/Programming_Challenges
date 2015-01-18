def kaprekar?(k)
	square_k = k ** 2
	second_num = (-1..square_k.to_s.size).each{|x| puts x}
end

puts kaprekar?(9)