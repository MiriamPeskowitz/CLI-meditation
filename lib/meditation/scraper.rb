require 'pry'
require 'nokogiri'
require 'open-uri'

class Meditation::Scraper
	attr_accessor :meditations, :doc
 	
 	@@all = []


 	def initialize
 		@todays_choices = Todays_choices.new
 		@doc = Nokogiri::HTML(open("http://www.audiodharma.org/"))	
 	end # do I need anything specific, like the first 3 

 	def scrape
 		scrape_overview
 		scrape_specifics
 		@todays_choices
 	end 

 	def scrape_overview
 		@doc.css(".talklist").text.strip #see if it needs any gsub 
 		#avi uses .search, not .css what's the difference? 
 	end 

 	def scrape_specifics
 		@doc.search(".talklist").each[1-5] do |article_table|
 			m = Your_choice.new

 			m.title = article_table.search
 			m.teacher = article_table.search
 			m.length =article_table.search
 			m.url = article_table.search
 		
 			@todays_choices.add_todays_choices(m)
 		end 
 	end 
 end 

#  	def self.get_page
#  		# Nokogiri::HTML(open("https://www.tarabrach.com/guided-meditations"))
#  		Nokogiri::HTML(open("http://www.audiodharma.org/"))	
#  	end

#  	def self.scrape_meditation
#  		self.get_page.css(".talklist").text
#  	end 

#  	def self.make_meditation_list
#  		self.scrape_meditation do |med|
# 			Meditation::Your_Meditation.new_from_index(med)
# 			binding.pry
#  		end
#  	 end 


# end 
# http://www.audiodharma.org.css(".talklist").text