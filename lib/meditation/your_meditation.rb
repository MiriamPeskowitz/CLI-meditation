

class Meditation::Your_meditation
	attr_accessor :title, :teacher, :date, :length, :stream
	@@all = []

 	def self.new_from_index(med)
		self.new(
			med.css("td.talk_title").text,
			med.css("a.talk_teacher").text,
			med.css("td.talk_date").text,	
			med.css("td.talk_length").text,
			med.css("a.audio-button").attribute("href").text   #talk-links:2d-child}
			)
		binding.pry
		#add index 
		@@all << self
	end 

	def initialize(title=nil, teacher=nil, date=nil, length=nil, stream=nil)
		@title = title
		@teacher = teacher
		@date = date
		@length = length
		@stream = stream
		@@all << self
	end

	def self.find(number)
		self.all[number -1]
	end 

	def self.all
		@@all
	end

end
