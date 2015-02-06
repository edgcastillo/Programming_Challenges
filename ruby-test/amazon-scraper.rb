require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.amazon.com/best-sellers-video-games/zgbs/videogames/ref=sv_vg_12"))

videoGames_titles = doc.xpath("//div[contains(@class, 'zg_title')]/a").collect {|node| node.text.strip}
videoGames_rank = doc.xpath("//span[contains(@class, 'zg_rankNumber')]").collect {|node| node.text.strip}

videoGames_titles.zip(videoGames_rank).each do |title,rank|
	puts "#{title}"+" "+"Rank Number: "+"#{rank}"
end