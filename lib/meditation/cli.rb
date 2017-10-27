class Meditation::CLI

 def call
 	Meditation::Scraper.new.make_object
 	puts "Welcome, and get ready to meditate."
 	menu
 end 

 def menu
 	puts "@@@@@@@@@@\n"
 	display_meditation
 	puts "Here are ten meditations. Which number would you like to see?"
 	choice = gets.strip.to_i

 	display_chosen_meditation
 	

 end 

 def display_meditations
 	puts "@@@@@@@@@@\n"
 	display = Meditation::Scraper.new.make_object

 end 

 def display_chosen_meditation(choice)



 end

 def choose_again
 	puts "Would you like to choose another? Press y, or x to exit."
 	input = get.strip.downcase

 	if input == "y"
 		menu
 	else
 		puts "Have a calm and grounded day."
 end 
 

end 
