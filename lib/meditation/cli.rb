class Meditation::CLI

	 def call
	 	Meditation::Scraper.make_meditation_list
	 	puts "Welcome, and get ready to meditate."
	 	menu
	 end 

	 def menu
	 	puts "@@@@@@@@@@\n"
	 	display_meditations
	 	puts "Here are ten meditations. Which number would you like to see?"
	 	input = gets.strip.to_i

	 	display_chosen_meditation(input)

	 	choose_again
	 end 

	 def display_meditations
	 	puts "@@@@@@@@@@\n"
	 end 

	 def display_chosen_meditation(choice)
	 	#chosen_meditation = Meditation::Scraper.find(choice)
	 	puts "@@@@@@@@@@\n"
	 	puts "Title:  		#{meditation.title}"
	 	puts "Teacher:      #{meditation.teacher}"
	 	puts "Length:       #{meditation.length}"
	 	puts "Stream: 		#{meditation.stream}"
	 end

	 def choose_again
	 	puts "@@@@@@@@@@\n"
	 	puts "Would you like to choose another? Press y, or x to exit."
	 	input = gets.strip.downcase

	 	if input == "y"
	 		menu
	 	else
	 		puts "Have a calm and grounded day."
	 	end
	 end 
 

end 
