# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).

class Ship
  attr_accessor :x, :y

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
    @fire_missile = []
    #@missile_coordinates = []
  end

  def move_left
    @x -= 5
  end

  def move_right
    @x += 5
  end

  def fire
    #@missile_coordinates << [@x, @y - HEIGHT / 2]
    @fire_missile << missile.new(@x, @y - HEIGHT / 2).draw
  end

  # def move_missiles
  #   @missile_coordinates.each do |missile|
  #     missile[1] -= 10
  #   end
  # end

  def draw
    # Ignore this
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
--reusable code that is simple to debug, easy to test, and maleable to change
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
--Single Responsibility, Open-Closed, Liskov Substitution, Interface Segregation, and Dependency Inversion
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
--False
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
--Exemplary: The code itself should encourage those who change it to perpetuate these qualities
5. How does applying SRP naturally lead to good design?
--We create code that is more cohesive and less coupled. If another feature is added or a dependency
changes we aren't left trying to decifer a mess of code and where the point of failure lies.
=end
