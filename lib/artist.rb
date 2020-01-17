class Artist 
  @@all = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end
  
  def self.all
    @@all 
  end
  
  def songs 
    Song.find_by_artist(self)
  end
  
  def self.find_or_created_by_name(name)
    self.find(name) ? self.find(name) : self.create(name)
  end
  
  def self.find(name)
    self.all.find {|artist| artist.name ==name }
  end
  