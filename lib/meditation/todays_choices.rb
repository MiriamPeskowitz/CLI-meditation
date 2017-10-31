
require 'pry'


class Meditation::Todays_choices
	attr_accessor :meditations #change this to attr_reader, since I set it below? 
	

	def initialize
		@meditations = []
	end

	def meditations
	   	@meditations
 	end

	def add_meditation(meditation)
		@meditations << meditation
	end 

	
end
