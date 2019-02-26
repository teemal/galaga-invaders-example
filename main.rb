#!/usr/bin/env ruby

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
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
  --Duck typing is using flexible interfaces between objects so as to reduce dependencies
    between them. You're essentially trying to reduce the need for concrete class definitions 
    inside objects to make your code more flexible against possible future changes. This has to do with
    polymorphism by ignoring the class that gets passed to an object. It is up to us to make sure our code
    plays nice with what is making the call, but we also allow our code to poly(many) morph (conform?)
    to infinit possible inputs.
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
   -- "• Case statements that switch on class
      • kind_of? and is_a?
      • responds_to?”

3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.
   --initially no, but peeling back the layers isn't inherently difficult. It takes a slightly larger
      investment of time but gives back dividends.
=end
