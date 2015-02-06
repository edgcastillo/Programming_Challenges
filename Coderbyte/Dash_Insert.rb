def dashInsert(num)
	num = num.to_s.split('')
	num.each_with_index{|a,i|
		if(a.to_i % 2 == 1 && i != 0 && num[i - 1].to_i % 2 == 1)
			a.prepend('-') # num.insert(i, '-') because coderbyte is using an older Ruby version
		end
	}
	return num.join('')
end

p dashInsert(99946) # => 9-9-946
p dashInsert(56730) # => 567-30
p dashInsert(1562) # => 1-562
p dashInsert(667488958374553) # => 6674889-583-745-5-3 this one throws an error in Coderbyte