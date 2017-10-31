
require "nokogiri"


class Meditation::Scraper
	attr_accessor :meditations, :doc
 	

 	def initialize
 		@todays_choices = Meditation::Todays_choices.new
 		@doc = Nokogiri::HTML(open("http://www.audiodharma.org/"))	
 	end # do I need anything specific, like the first 3 

 	def scrape
 		scrape_meditations
 		@todays_choices 
 	end 

 	# def scrape_overview
 	# 	@todays_choices = @doc.css(".talklist")[1..5].text.strip
 	# 	 #THIS IS THE LIST 
 	# 	#avi uses .search, not .css what's the difference? 
 	# end 


 	def scrape_meditations
 		@doc.search(".talklist")[1..5].collect do |med|
 			#instantiate the meditation 
 			meditation = Meditation::Each_meditation.new
 			#scrape the data 
			meditation.title = med.css(".talk-title").text.strip
 			meditation.teacher = med.css(".talk-teacher").text.strip
 			meditation.length = med.css(".talk-length").text.strip
 			meditation.stream = med.css("a:nth-child(2)").attr("href").text.strip
 			@todays_choices.add_meditation(meditation)
 			binding.pry
 		#nth-child(2) or instead of a, .audio-button:nth-child(2)
 		#this creates a round of content for the attr_accessors in each.meditation 
 		
 		end
 		
  	end 
 
end 

#how do i get the choice? 
# Make a hash? 
# :title => 
# :teacher =>
# :exhibit =>
# :length => 


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