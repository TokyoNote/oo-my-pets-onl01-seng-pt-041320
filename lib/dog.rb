# frozen_string_literal: true
class Cat
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all << self
  end
  def self.all
    @@all
  end
  def self.cats_by_owner(owner)
    all.select { |cat| cat.owner == owner }
  end
end
# frozen_string_literal: true
class Dog
  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = 'nervous'
    @@all << self
  end
  def self.all
    @@all
  end
end
# frozen_string_literal: true
class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
    puts self
  end
  def save
    @@all << self
  end
  def self.create(name)
    owner = new(name)
    owner.save
  end
  def self.all
    @@all
  end
  def self.count
    all.length
  end
  def self.reset_all
    all.clear
  end
  def say_species
    puts "I am a #{species}."
    "I am a #{species}."
  end
  def cats
    Cat.all.select { |cat| cat.owner == self }
  end
  def dogs
    Dog.all.select { |dog| dog.owner == self }
 end
  def buy_cat(name)
    Cat.new(name, self)
  end
  def buy_dog(name)
    Dog.new(name, self)
  end
  def walk_dogs
    dogs.each { |dog| dog.mood = 'happy' }
  end
end