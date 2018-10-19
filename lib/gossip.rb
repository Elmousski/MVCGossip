#ce fichier correspond au model

require 'json'
require 'controller'
require 'csv'
require 'view'

class Gossip
attr_reader :author, :content

	def initialize(author, content)
  		@content = content
  		@author = author
	end


	def save
		  CSV.open("./db/gossip.csv", 'ab') {|csv| csv << [@author, @content]}
		end



# def self.all
#     gossips = []
#     CSV.foreach("./db/gossip.csv") do |line|
#       gossip = Gossip.new(line[0], line[1])
#       gossips << gossip
#     end
#     gossips
# end
	
	def self.all
  
		gossips = []
		CSV.foreach("./db/gossip.csv") do |ligne| 
		gossip = Gossip.new(ligne[0], ligne[1])
 		gossips << gossip
	end
	gossips
end

  # création d'une array vide qui s'appelle all_gossips
  # chaque ligne de ton CSV.each do |ligne|
  #   
    #
  # 



	# def sors_moi_les_gossips_en_array
	# 		data_file = './db/gossip.csv'
	# 		data = Array.new
	# 		data = []
	# 		CSV.foreach(data_file, headers: true) do |row|
 #  			data << row.to_hash
	# end
	# end
	# 	  puts data


end
