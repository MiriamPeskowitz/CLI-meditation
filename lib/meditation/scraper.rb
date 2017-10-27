require 'pry'
require 'nokogiri'
require 'open-uri'

class Meditation::Scraper
 	
 	@@all = []

 	def get_page
 		Nokogiri::HTML(open("https://https://www.tarabrach.com/guided-meditations/"))
 	end

 	def find_meditation
 		x = self.get_page.css(“.event-description a[href].each_with_index 
 	end 

 	def make_object
 		x.each_with_index { |text, index| puts "#{index}.#{text}"}
 	end 


end 
