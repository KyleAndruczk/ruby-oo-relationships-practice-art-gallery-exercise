class Artist

  attr_reader :name, :years_experience

  @@all = []
  @@total_experience = 0

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@total_experience += years_experience
    @@all << self
  end

  def self.all
    @@all
  end 

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    paintings.map { |painting| painting.gallery }.uniq
  end 

  def cities 
    galleries.map { |gallery| gallery.city }.uniq
  end

  def self.total_experience
    @@total_experience
  end

  def self.most_prolific
    paintings_per_year = self.all.max do |artist1, artist2| 
      (artist1.paintings.count / artist1.years_experience) <=> (artist2.paintings.count / artist2.years_experience)
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
