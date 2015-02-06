#mode = is the number more often repeated
#mean = is the average 
#take array of numbers and return 1 if the mode equals the mean, 0 if they don't equal each other
def meanMode(arr)
	mean = arr.reduce(:+) / arr.size
	mode = arr.sort{|a,b| arr.count(a) <=> arr.count(b)}[-1]
	mean == mode ? (return 1) : (return 0)
end

p meanMode([5,3,3,3,1]) #returns 1
p meanMode([1,2,3]) #return 0
p meanMode([4,4,4,6,2]) #returns 1