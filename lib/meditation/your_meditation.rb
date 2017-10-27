

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
		@@all << self
	end 
end




# # 	def initialize(talk_name = nil, 
# # 	 @talk_name = talk_name 
# # 	 etc 
# # 	end 

# # 	def self.all
# # 		@@all
# # 	end 



# # end
