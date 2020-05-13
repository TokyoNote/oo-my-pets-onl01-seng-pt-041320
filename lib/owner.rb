class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    puts self
  end
  
  def self.all
    @@all
  end
  
  def
    
  def self.count
    all.size
  end
  
  def self.reset_all
    all.clear
  end
  
  def say_species
   puts "I am a #{species}."
   "I am a #{species}."
  end
  
  def cats
    Cats.all.filter { |cat| cat.owner == self}
  end
end