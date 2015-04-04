# The Utopian Tree goes through 2 cycles of growth every year. The first growth cycle occurs during the spring, when it doubles in height. The second growth cycle occurs during the summer, when its height increases by 1 meter.

# Now, a new Utopian Tree sapling is planted at the onset of spring. Its height is 1 meter. Can you find the height of the tree after N growth cycles?

# Input Format

# The first line contains an integer, T, the number of test cases. 
# T lines follow; each line contains an integer, N, that denotes the number of cycles for that test case.

# Constraints 
# 1≤T≤10 
# 0≤N≤60
# sample input 3014 where 3 is the number of loops and 0 - 1 - 4 are the number of cycles for each tree


def cycles(n)
    numCycles = n
    counter = 1
    tree = 1
    while(counter <= numCycles)
    	tree = tree + tree
    	counter += 1
    	if(counter > numCycles)
    		break
    	end
    	tree += 1
    	counter += 1
    end
    return tree
end
    

t = gets.to_i
for i in 0...t
    n = gets.to_i
    res = cycles(n)
    puts "this is the res #{res}"
end