require 'pry'
require 'nokogiri'
require 'open-uri'

class Meditation::Scraper
 	
 	@@all = []

 	def self.get_page
 		# Nokogiri::HTML(open("https://www.tarabrach.com/guided-meditations"))
 		Nokogiri::HTML(open("http://www.audiodharma.org/"))
 	end

 	def self.scrape_meditation
 		self.get_page.css(".talklist").text
 	end 

 	def self.make_meditation_list
 		self.scrape_meditation do |med|
			Meditation::Your_Meditation.new_from_index(med)
 		end
 	 end 


end 
