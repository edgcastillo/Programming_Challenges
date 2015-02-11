#Programming Challenges from Coderbyte.com Level: Easy

#Reverse String - reverse a string
def reverse_string(string)
	return string.reverse
end
p reverse_string("hola")

#First Factorial - find the factorial of a given number
def factorial(number)
	factorial = 1
	(1..number).each do |x|
		factorial *= x
	end
	return factorial
end
puts factorial(5)


#Find the largest word in a string
def longestWord(sen)
	array = []
	sen.gsub!(/[^0-9a-zA-Z\s]/i, '')
	sen = sen.split(' ')
	sen.each {|word| array.push(word)}
	array.sort! { |x,y| y.length <=> x.length }
	return array.first
end
p longestWord("a beautiful sentence^&!")


#Letter Changes - Manipulate characters in a string based off their position in the alphabet
#Using the Ruby language, have the function LetterChanges(str) 
#take the str parameter being passed and modify it using the following algorithm. 
#Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). 
#Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string. 
def letterChanges(str)
	new_str = []
	alphabet = ('a'..'z').to_a
	str = str.split('')
	str.each {|x|
		new_str.push(x) unless alphabet.include?(x)
		alphabet.each_index {|index| 
			if(x.eql?(alphabet[index]))
				letter = alphabet[index + 1]
				if(%{a e i o u}.include?(letter))
					letter = letter.upcase
				end
				new_str.push(letter)
			end
		}

	}
	return new_str.join('')
end
p letterChanges("this long cake@&")

#Simple Adding - adding up all the numbers from 1 to n
def adding(num)
	sum = 0
	(1..num).each do |x|
		sum += x
	end
	return sum
end

p adding(8)

#Letter Capitalize - For this challenge you will be capitalizing first word of each char in a string.
def letterCapitalize(str)
	#str = str.split(' ')
	#str.map! {|word| word.capitalize}
	#str.join(' ')
	str.split(' ').map! {|word| word.capitalize}.join(' ')
end

p letterCapitalize("i am legend")


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

# determine the difference in hours and minutes between two given times.
def timeConvert(num)
	
	return "#{num/60}:#{num%60}"
end

p timeConvert(126)

#sort characters in a string
def alphabetSoup(str)
	return str.split('').sort().join('')
end

p alphabetSoup("coderbyte")

#count the vowels in a string
def vowelCount(str)
	count = 0
	str = str.split('').each{|x| count += 1 if(%(a e i o u).include?(x))}
	return count
end

p vowelCount("coderbyte")


def exOh(str)
	countO = 0
	countX = 0
	str.split('').each{|x| countO += 1 if(x == "o")}
	str.split('').each{|y| countX += 1 if(y == "x")}

	return countO == countX

end

p exOh("oxoooxo")

#determine if a string is written the same way forward and backwards
def palindrome(str)
	return str.gsub(' ', '') == str.gsub(' ', '').reverse
end

p palindrome("never odd or even")


#Determine if numbers within an array follow an arithmetic or geometric sequence
def arithGeo(arr)
	baseNumArith = arr[1] - arr[0]
	baseNumGeo = arr[1] / arr[0]
	if(arr.last - arr[arr.size - 2] == baseNumArith)
		return "Arithmetic"
	elsif(arr.last / arr[arr.size - 2] == baseNumGeo && baseNumGeo != arr[1])
		#for this problem - arr.last / arr[arr.size - 2] == baseNumGeo this algorithm works for almos all the tests
		#but if the array starts with 1 increments and ends with a geomtric sequence it will pass as truth. when in fact it is not: 
		# EG. 1 - 2 - 3.....10 - 20 while the last two numbers make the stament truth: array[n - 1] / array[n - 2] = baseNum
		#the sequence at the beginning is not geometric. 
		return "Geometric"
	else
		return -1
	end
end

p arithGeo([2,4,16,24]) #it will return -1
p arithGeo([5,10,15]) #it will return Arithmetic
p arithGeo([2,6,18,54]) #it will return Geometric
p arithGeo([1,5,9]) #it will return Arithmetic
p arithGeo([1,2,3,4,5,10,20]) #it will return -1

#Determine if numbers in an array can add up to a certain number in the array
def arrayAdditionI(arr)
	arrSum = 0
	largestNum = arr.sort.pop
	arr.each{|x| arrSum += x if(x < largestNum) }
	if(arrSum >= largestNum || arr.include?(arrSum - largestNum))
		return true
	else 
		return false
	end
end

p arrayAdditionI([4,6,23,10,1,3]) #it is true
p arrayAdditionI([5,7,16,1,2]) #it is false
p arrayAdditionI([31,2,90,50,7]) #it is true


#Determine which word has the greatest numbers of repeated letters
def letterCountI(str)
	# count = 0
	# mostRepeatedLetters = ''
	# str = str.split('').each{|letter| 
	# 	if(str.count(letter) > count)
	# 		count = str.count(letter)
	# 		mostRepeatedLetters = str
	# 	end
	# }
	# return mostRepeatedLetters

	letterCount = 0
	letterMaxWord = ''
	str = str.split(' ').each{|word| word.split('').each{|letter| 
		if(word.downcase.count(letter) > letterCount)
			letterCount = word.downcase.count(letter)
			letterMaxWord = word
		end
		}}
	letterCount > 1 ? (return letterMaxWord) : (return -1)
	
end

p letterCountI("Hello apple pie") #returns Hello
p letterCountI("No word") #returns -1
p letterCountI("Banana Bananarama cocomelococo") #returns Bananarama


def divisionStringified(num1, num2)
	result = (num1 / num2).next.to_s.reverse
	result = result.split('').gsub(/[0-9]/)

end

p divisionStringified(6874,67)



