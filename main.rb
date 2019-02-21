require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      ship.fire()
    end
    #if key == 'p'
      #alien.fire(missiles) makes no sense to have user fire alien missiles
    #end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. True or False: Good OO design eliminates dependencies.
  --False, dependencies are necessary but we should aim 
  to minimize them to make our code more flexible but having 
  them is inescapable
2. Briefly list four ways in which a class that collaborates with another class
   is dependent on it. (For example, one dependency is knowing the other class name.)
   --knowing another classes name
   --the name of a message an object intends to send
   --the arguments a message requires
   --the order of an objects arguments
3. What are two primary factors to consider when assessing the risk of a dependency?
  --I can't remember this exact topic and didn't get it in my notes but
  if I were to guess, I would think that one should consider the 
  damage that would be done if a dependency changes and how likely
  one thinks a dependency will change (v0.0.1 library vs a well established one)
4. What is Metz's rule of thumb for choosing a dependency direction?
  --depend on things that change less often than you do
=end
