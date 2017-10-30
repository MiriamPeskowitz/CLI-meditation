
require 'pry'


class Meditation::Todays_choices
	attr_accessor :title, :teacher, :length, :stream,
	attr_reader :meditations
	

	def initialize(title=nil, teacher=nil, length=nil, stream=nil )# are these necessary? 
		@meditations = []
		# @title = title
		# @teacher = teacher
		# @length = length
		# @stream = stream
	end

	def meditations
	  	@meditations.dup.freeze
 	end 

	def add_todays_choices(m)
		@meditations << m
	end 

	def add_meditation(meditation)
		@meditations << meditation
	end 
end

# @today_choices_array = @meditations 
#  	def self.new_from_index(med)
# 		self.new(
# 			med.css("td.talk_title").text,
# 			med.css("a.talk_teacher").text,
# 			med.css("td.talk_date").text,	
# 			med.css("td.talk_length").text,
# 			med.css("a.audio-button").attribute("href").text   #talk-links:2d-child}
# 			)
# 		@@all << self
# 	end 

# 	def initialize(title=nil, teacher=nil, date=nil, length=nil, stream=nil)
# 		@title = title
# 		@teacher = teacher
# 		@date = date
# 		@length = length
# 		@stream = stream
# 		@@all << self
# 	end

# 	def self.find_by_number(number)
# 		self.all.detect do [number -1]
	
# end 


