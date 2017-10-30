class Meditation::CLI_controller

	def initialize #initialize the CLI controller object -- wrap my brain around this. 
	 	
	 	puts "Welcome, and get ready to meditate."
	 	med = Meditation::Scraper.new #scrapes the top five meditations 
	 	@todays_choices = med.scrape
	 	
	end 

	def call
	 	puts "@@@@@@@@@@\n"
	 	input = ""

	 	display_meditations

	 	puts "Here are five meditations. Which number would you like to see?"
	 	@input = gets.strip.to_i
	 	pick
	end

	def pick
	 	if @input.between?(1..5)
	 		system("open #{@todays_choices[@input.to_i-1].stream}")
	 	else
	 		choose_again 	 
	 	end 
	end 

	def display_meditations
		@todays_choices.meditations.each_with_index do |m, index|
			puts "#{index}. #{m}"
			 #{m.title}, #{m.teacher}, #{m.length}"
		end 
 	end 

 	def choose_again
	 	
	 	puts "Would you like to choose a meditation? Enter 1-5, or 'x' to exit."
	 	input = gets.strip.downcase

	 	if input > 0 && input <6
	 		open
	 	else
	 		puts "Have a calm and grounded day."
	 	end
	end 
end 

# 	 	display_chosen_meditation(input)

	 

# 	 def display_chosen_meditation(choice)
# 	 	#chosen_meditation = Meditation::Scraper.find(choice)
# 	 	
# 	 	puts "Title:  		#{meditation.title}"
# 	 	puts "Teacher:      #{meditation.teacher}"
# 	 	puts "Length:       #{meditation.length}"
# 	 	puts "Stream: 		#{meditation.stream}"
# 	 end