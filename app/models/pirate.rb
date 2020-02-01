class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    self.save 
  end #init

  def save
    @@all << self
  end #save

  def self.all
    @@all
  end #self.all

end