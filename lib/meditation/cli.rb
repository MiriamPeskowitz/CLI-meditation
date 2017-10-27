class Meditation::CLI

 def call
 	puts "welcome"
 	menu
 end 

 def menu
 	Meditation::Scraper.scrape_meditation
 end 

 def show_choice
 end 
 

end 
