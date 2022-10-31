require 'faker'

20.times do |i|
  Gossip.create(
    gossip_author: Faker::Movie.title[0..11],
    gossip_content: Faker::Quote.matz,
    
  )
end
puts "Gossips created!"