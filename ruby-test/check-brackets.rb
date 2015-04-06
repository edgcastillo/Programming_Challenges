#check if each string in an array had properly matched brackets

def check_brackets(strArr)
	brackets = ["(",")","[","]","{","}"]
	resArray = []
	(0...strArr.length).each do |x|
		check = true
		brackets.each{|element|
			check = false if(strArr[x].include?(element) == false && strArr[x].size % 2 != 0)
		}
		resArray.push(check)
	end
	return resArray
end


puts check_brackets([")(){}","[]({})","([])","{()[]}","([)]{"])
