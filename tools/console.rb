require_relative '../config/environment.rb'

a1 = Artist.new("Van Gogh", 1)
a2 = Artist.new("Kahlo", 2)
a3 = Artist.new("Picasso", 2)


g1 = Gallery.new("MoMA", "New York")
g2 = Gallery.new("National Gallery", "Washington, DC")



Painting.new("Starry Night", 100, a1, g1)
Painting.new("Self Portrait", 200, a1, g2)
Painting.new("The Night Café", 250, a1, g2)
Painting.new("The Two Fridas", 300, a2, g1)
Painting.new("The Broken Column", 400, a2, g2)
Painting.new("The Weeping Woman", 450, a3, g1)
a2.create_painting("Self Portrait", 475, g2)
a3.create_painting("Les Demoiselles d'Avignon", 500, g1)
a3.create_painting("Guernica", 600, g2)



binding.pry

puts "Bob Ross rules."
