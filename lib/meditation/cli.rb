class Meditation::CLI

	 def call
	 	Meditation::Scraper.new.make_object
	 	puts "Welcome, and get ready to meditate."
	 	menu
	 end 

	 def menu
	 	puts "@@@@@@@@@@\n"
	 	display_meditations
	 	puts "Here are ten meditations. Which number would you like to see?"
	 	choice = gets.strip.to_i

	 	display_chosen_meditation(choice)

	 	choose_again
	 end 

	 def display_meditations
	 	puts "@@@@@@@@@@\n"
	 	display = Meditation::Scraper.new.make_object
	 end 

	 def display_chosen_meditation(choice)
	 	#chosen_meditation = Meditation::Scraper.find(choice)
	 	puts "@@@@@@@@@@\n"
	 	puts "Title:  	#{.title}"
	 	puts "Teacher:     #{.teacher}"
	 	puts "Length:      #{.length}"
	 	puts "Stream: 		#{.stream}"



	 end

	 def choose_again
	 	puts "@@@@@@@@@@\n"
	 	puts "Would you like to choose another? Press y, or x to exit."
	 	next = get.strip.downcase

	 	if next == "y"
	 		menu
	 	else
	 		puts "Have a calm and grounded day."
	 	end
	 end 
 

end 
