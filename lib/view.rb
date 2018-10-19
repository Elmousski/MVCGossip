class View

  def create_gossip2

	puts "Quel est ton nom ?"
	username = gets.chomp.to_s
	puts "Ok, c'est quoi le potin ?"
	potin = gets.chomp.to_s

	return params = { author: username, content: potin }
  
  end


  def index_gossips(gossips)
    2.times {puts ''}
    gossips.each do |gossip|
      puts "[]#{gossip.author}: #{gossip.content}"
end
	end


end