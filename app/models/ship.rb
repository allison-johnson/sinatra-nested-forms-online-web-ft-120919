class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    self.save
  end #init

  def save
    @@all << self 
  end #save

  def self.all
    @@all 
  end #self.all

  def self.clear
    @@all.clear 
  end #self.clear

end