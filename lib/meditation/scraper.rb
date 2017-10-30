# require 'pry'
# require 'nokogiri'
# require 'open-uri'

class Meditation::Scraper
	attr_accessor :meditations, :doc
 	

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
 		@doc.search(".talklist")[0..5].each do |article_table|
 			m = Your_choice.new
 			binding.pry

 			m.title = article_table.search(".talk-title").text.strip
 			m.teacher = article_table.search(".talk-teacher").text.strip
 			m.length =article_table.search(".talk-length").text.strip
 			m.url = article_table.search(".talk-links a:nth-child(2)").attr("href").text.strip
 		#nth-child(2) or instead of a, .audio-button:nth-child(2)
 		end
 		@todays_choices.add_todays_choices(m)
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