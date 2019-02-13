class Missile
	attr_accessor :x, :y

	def initialize(x, y)
		@x = x
		@y = y
	end

	def move_missile
		@y -= 10
	end

	def remove_missile
		#TODO
	end

	def draw_missiles
    @missile_coordinates.each do |missile|

    end
  end
end