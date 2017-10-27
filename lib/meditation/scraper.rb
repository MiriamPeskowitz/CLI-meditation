require 'pry'
require 'nokogiri'
require 'open-uri'

class Meditation::Scraper
 	
 	@@all = []

 	def get_page
 		Nokogiri
 	end

 	def find_meditation
 		x = self.get_page... html selectors 
 	end 

 	def make_object
 		x.each_with_index
 	end 


end 
