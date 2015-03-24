# Wikipedia scraper to get the name of the NBA players in each team. 


require 'open-uri'
require 'nokogiri'


url = "http://en.wikipedia.org/wiki/List_of_current_NBA_team_rosters"
page = Nokogiri::HTML(open(url))

puts "The NBA currently has #{page.css('td[style="text-align:left;"]').size} players according to Wikipedia"
page.css('td[style="text-align:left;"]').each do |line|
	puts line.text
end