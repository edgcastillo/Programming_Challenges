require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.amazon.com/gp/bestsellers/books/ref=sv_b_2"))


