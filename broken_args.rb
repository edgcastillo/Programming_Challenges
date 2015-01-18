def broken_args(x, *y, z=1)
	puts "x = #{x}, y = #{y}, z = #{z}"
end

broken_args(1, 2, 3, 4)