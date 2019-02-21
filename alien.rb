require_relative 'missile'

class Alien

  WIDTH = 50
  HEIGHT = 50

  attr_accessor :x, :y

  def initialize(args)
    @x = args[:x]
    @y = args[:y]
  end

  def defaults
    {:x => 200, :y => 200}
  end

  def move
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{x}, #{y})"
  end

  def fire() #fire previously needed to know too much about missile class
    self.x
    self.y
  end

  # def bottom_edge
  #   y + HEIGHT / 2
  # end

end
