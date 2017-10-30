class Meditation::CLI_controller

	def initialize #initialize the CLI controller object -- wrap my brain around this. 
	 	
	 	puts "Welcome, and get ready to meditate."
	 	med = Meditation::Scraper.new
	 	@todays_choices = med.scrape
	 	
	end 

	def call
	 	puts "@@@@@@@@@@\n"
	 	input = ""

	 	display_meditations
	 	puts "Here are five meditations. Which number would you like to see?"
	 	input = gets.strip.to_i
	end

	def open
	 	if input > 0 && input <6
	 		system("open #{@todays_choices.title[input.to_i-1].url}")
	 	else
	 		choose_again 	 
	 	end 
	end 

 	def choose_again
	 	puts "@@@@@@@@@@\n"
	 	puts "Would you like to choose a meditation? Enter 1-5, or x to exit."
	 	input = gets.strip.downcase

	 	if input > 0 && input <6
	 		open
	 	else
	 		puts "Have a calm and grounded day."
	 	end
	end 
end 

# 	 	display_chosen_meditation(input)

	 
# **	 end 

# 	 def display_meditations
# 		@todays_choices
#  	 	puts "@@@@@@@@@@\n"
#  	 end 

# 	 def display_chosen_meditation(choice)
# 	 	#chosen_meditation = Meditation::Scraper.find(choice)
# 	 	puts "@@@@@@@@@@\n"
# 	 	puts "Title:  		#{meditation.title}"
# 	 	puts "Teacher:      #{meditation.teacher}"
# 	 	puts "Length:       #{meditation.length}"
# 	 	puts "Stream: 		#{meditation.stream}"
# 	 end

	
 

# end 
