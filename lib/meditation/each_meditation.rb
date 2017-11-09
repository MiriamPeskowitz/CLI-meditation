class Meditation::Each_meditation
	attr_accessor :title, :stream, :teacher, :length

	@@all = []

	def initialize
		@@all << self
	end

	def self.all
		@@all
	end 

	def self.find_by_teacher(name)
		self.all.select do |meditation| 
			meditation.teacher.downcase == name.downcase
		end
	end

end 