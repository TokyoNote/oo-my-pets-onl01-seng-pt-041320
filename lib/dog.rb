class Dog
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood= 'nervous'
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def dog
    Dogs.all.filter { |dog| dog.owner == self}
  end
  
  def dogs
    Dogs.all.select { |dog| dog.owner == self}
  end
  
  def dogs
    
end