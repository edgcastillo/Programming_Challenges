#see simple symbols, for some reason coderbyte doesn't like with_index method
def simpleSymbols(str)
	str = str.split('')
	str.map.with_index{|char,i| 
		if(char =~ /[a-zA-Z]/)
			return false if str.index(char) == 0
			if(str[i - 1] != "+" || str[i + 1] != "+")
				return false
			end
		end
	}
	return true
end

p simpleSymbols("+d+") #true
p simpleSymbols("+d===+a+") #false
p simpleSymbols("aaa") #false
p simpleSymbols("+z+z+z+") #true
p simpleSymbols("+a=") #false
p simpleSymbols("2+a+a+") #true
p simpleSymbols("+a++") #true
p simpleSymbols("+z+z+==+a+") #true
p simpleSymbols("==a+") #false
p simpleSymbols("b") #false