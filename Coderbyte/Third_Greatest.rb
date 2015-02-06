#take array of strings and return third largest word inside de array. 
def thirdGreatest(strArr)
	strArr.sort{|a,b| a.length <=> b.length}
end

p thirdGreatest(["hello", "world", "after", "all"])
p thirdGreatest(["abc", "defg", "z", "hijk"])
p thirdGreatest(["coder", "byte", "code"])