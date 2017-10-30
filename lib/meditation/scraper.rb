require 'pry'
require 'nokogiri'
require 'open-uri'

class Meditation::Scraper
	attr_accessor :meditations, :doc
 	

 	def initialize
 		@todays_choices = Meditation::Todays_choices.new
 		@doc = Nokogiri::HTML(open("http://www.audiodharma.org/"))	
 	end # do I need anything specific, like the first 3 

 	def scrape
 		scrape_overview
 		scrape_specifics
 		@todays_choices
 	end 

 	def scrape_overview
 		@todays_choices = @doc.css(".talklist")[0..5].text.strip #see if it needs any gsub 
 		#avi uses .search, not .css what's the difference? 
 	end 

 	def scrape_specifics
 		@doc.css(".talklist").each do |meditations|
 			m = Meditation::Todays_choices.new
 			#this -- 
			m.title = meditations.css(".talk-title").text.strip
 			m.teacher = meditations.css(".talk-teacher").text.strip
 			m.length = meditations.css(".talk-length").text.strip
 			m.stream = meditations.css("a:nth-child(2)").attr("href").text.strip
 		#nth-child(2) or instead of a, .audio-button:nth-child(2)
 		
 		end
 		@todays_choices.add_todays_choices(m)
  	end 
 
end 

#how do i get the choice? 

# @todays_choices = []
# 		@title = Meditation::Todays_choices.title
# 		@teacher = Meditation::Todays_choices.teacher
# 		@length = Meditation::Todays_choices.length
# 		@stream = Meditation::Todays_choices.stream
		

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