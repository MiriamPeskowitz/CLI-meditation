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

 	def make_object
 		scrape_meditation.each do |med|
 			puts "#{title}, #{speaker}, #{date}, #{length}"
 			binding.pry
 		#Meditation::Your_Meditation.new_from_index(med)
 		end
 	 end 


end 
