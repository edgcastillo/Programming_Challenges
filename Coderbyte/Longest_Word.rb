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