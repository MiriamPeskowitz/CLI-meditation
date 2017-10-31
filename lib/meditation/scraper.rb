
require "nokogiri"


class Meditation::Scraper
	attr_accessor :meditations, :doc
 	

 	def initialize
 		@todays_choices = Meditation::Todays_choices.new
 		@doc = Nokogiri::HTML(open("http://www.audiodharma.org/"))	
 	end 

 	def scrape
 		scrape_meditations
 		@todays_choices 
 	end 


 	def scrape_meditations
 		
 		@doc.search(".talklist tr")[1..5].collect do |med| #make sure I dig deep enough
 	#into the css on these searches. 

 			#instantiate the meditation 
 			meditation = Meditation::Each_meditation.new

 			#scrape the data 
			meditation.title = med.css(".talk_title").text.strip
 			meditation.teacher = med.css(".talkteacher").text.strip
 			meditation.length = med.css(".talk_length").text.strip
 			meditation.stream = med.css("a:nth-child(2)").attr("href").text.strip
 			
 			@todays_choices.add_meditation(meditation)
 		end
 		
  	end 
 
end 


#  	the other choice: 
#  		# Nokogiri::HTML(open("https://www.tarabrach.com/guided-meditations"))
#  	
#  	end

