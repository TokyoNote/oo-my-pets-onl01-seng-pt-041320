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