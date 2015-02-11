#take array of strings and return third largest word inside de array. 
def thirdGreatest(strArr)
	puts strArr.sort{|a,b| a.length <=> b.length}
end

thirdGreatest(["one","two","three"])
thirdGreatest([ "abc","defg","z","hijk"])
thirdGreatest(["coder","byte","code"])

