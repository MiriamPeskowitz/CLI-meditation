class Meditation::CLI_controller

	def call #initialize the CLI controller object -- wrap my brain around this. 
	 	
	 	puts "Welcome to the meditation gem."
	 	@today = Meditation::Scraper.new
	 	menu
	end 


	def menu
		list_or_exit_input = ""

		while list_or_exit_input != "exit"
			puts "what would you like to do, list or exit?"
			list_or_exit = gets.strip.downcase

			
			if list_or_exit_input == "list"
				list_meditations 
				puts "which would you like?"
				

			elsif list_or_exit_input == "exit"
				puts "Have a calm day"
				break

			else
				system("open #{@todays_choices[selected_meditation.to_i-1].stream}")
			
			end
		end
	end 
		
#this isn't working, why? 
	def list_meditations 
			# @med = Meditation::Scraper.new #scrapes the top five meditations 
	 # 	@todays_choices = @med.scrape

		@today.scrape_meditations.each_with_index do |m, i|binding.pry
			puts "#{i}. #{m.title} -- #{m.teacher} -- #{m.length}"
			binding.pry
		end 
 	end 

 	def pick_meditation
  		puts "Pick a meditation."
 		selected_meditation = gets.strip
	 end 

end


# @todays_choices.meditations.each_with_index do |m, index|
		# 	puts "#{index}. #{m}"
			 #{m.title}, #{m.teacher}, #{m.length}"
#  	def choose_again
	 	
# 	 	puts "Would you like to choose a meditation? Enter 1-5, or 'x' to exit."
# 	 	input = gets.strip.downcase

# 	 	if input > 0 && input <6
# 	 		open
# 	 	else
# 	 		puts "Have a calm and grounded day."
# 	 	end
# 	end 
# end 

# 	 	display_chosen_meditation(input)

	 

# 	 def display_chosen_meditation(choice)
# 	 	#chosen_meditation = Meditation::Scraper.find(choice)
# 	 	
# 	 	puts "Title:  		#{meditation.title}"
# 	 	puts "Teacher:      #{meditation.teacher}"
# 	 	puts "Length:       #{meditation.length}"
# 	 	puts "Stream: 		#{meditation.stream}"
# 	 end