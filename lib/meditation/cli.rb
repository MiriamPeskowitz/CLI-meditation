class Meditation::CLI_controller

	def call #initialize the CLI controller object -- wrap my brain around this. 
	 	#scrape first 
	 	puts "****   Welcome to Miriam's meditation gem.  ****"
	 	puts "************************************************"

	 	@today = Meditation::Scraper.new.scrape
	 	menu
	end 


	def menu
		list_or_exit_input = ""

		while list_or_exit_input != "exit"
			puts "Enter 'list' to see five Audio Dharma meditations, or 'exit' to leave."
			list_or_exit_input = gets.strip.downcase

			#logic for the input: 
			if list_or_exit_input == "list"
				"************************************************"
				list_meditations 

				puts "Enter the number of the meditative talk you'd like to hear. (It'll auto-open in your browser.)"
				pick_meditation
				

			elsif list_or_exit_input == "exit"
				puts "Have a calm and grounded day."
				puts "*****************************"
				break

			else
				puts "Can you repeat that?"

			end
		end
	end 
		

	def list_meditations 	
		@today.meditations.each_with_index do |m, i|
			puts "#{i + 1}: #{m.title}"
			puts " by #{m.teacher} (Length: #{m.length})"
		end 
		puts "************************************************"

	end 

 	def pick_meditation

 		selected_meditation = gets.strip
 		system("open http://www.audiodharma.org/#{@today.meditations[selected_meditation.to_i-1].stream}")

	end 
 
end

	 
