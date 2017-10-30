
require 'pry'


class Meditation::Todays_choices
	attr_accessor :title, :teacher, :date, :length, :stream
	@@all = []

	def initialize
		@todays_choices = []
		@length = Meditation::Todays_choices.length
		@stream = Meditation::Todays_choices.stream
		@title = Meditation::Todays_choices.title
		@teacher = Meditation::Todays_choices.teacher
	end

	def add_todays_choices(m)
		@today_choices << m
	end 
end


 # 	def self.new_from_index(med)
	# 	self.new(
	# 		med.css("td.talk_title").text,
	# 		med.css("a.talk_teacher").text,
	# 		med.css("td.talk_date").text,	
	# 		med.css("td.talk_length").text,
	# 		med.css("a.audio-button").attribute("href").text   #talk-links:2d-child}
	# 		)
	# 	@@all << self
	# end 

	# def initialize(title=nil, teacher=nil, date=nil, length=nil, stream=nil)
	# 	@title = title
	# 	@teacher = teacher
	# 	@date = date
	# 	@length = length
	# 	@stream = stream
	# 	@@all << self
	# end

	# def self.find_by_number(number)
	# 	self.all.detect do [number -1]
	# end 

	# def self.all
	# 	@@all
	# end

