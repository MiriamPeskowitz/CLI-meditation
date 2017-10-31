class Meditation::CLI_controller

	def call #initialize the CLI controller object -- wrap my brain around this. 
	 	
	 	puts "Welcome to the meditation gem."
	 	@today = Meditation::Scraper.new.scrape
	 	menu
	end 


	def menu
		list_or_exit_input = ""

		while list_or_exit_input != "exit"
			puts "what would you like to do, list or exit?"
			list_or_exit_input = gets.strip.downcase

			
			if list_or_exit_input == "list"
				list_meditations 
				puts "which would you like?"
				pick_meditation
				

			elsif list_or_exit_input == "exit"
				puts "Have a calm day"
				break

			else
				puts "Not sure what you want. Try again: list or exit?"

			
			end
		end
	end 
		

	def list_meditations 	
		@today.meditations.each_with_index do |m, i|
			puts "#{i + 1}: #{m.title}"
			puts " by #{m.teacher} (Length:#{m.length})"
			
		end 
 	end 

 	def pick_meditation
 		selected_meditation = gets.strip
 		system("open http://www.audiodharma.org/#{@today.meditations[selected_meditation.to_i-1].stream}")

	end 
 
end

	 

# 	 def display_chosen_meditation(choice)
# 	 	#chosen_meditation = Meditation::Scraper.find(choice)
# 	 	
# 	 	puts "Title:  		#{meditation.title}"
# 	 	puts "Teacher:      #{meditation.teacher}"
# 	 	puts "Length:       #{meditation.length}"
# 	 	puts "Stream: 		#{meditation.stream}"
# 	 end