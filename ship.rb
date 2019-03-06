class Ship < Structure
  include Drawing
  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end

  def draw
    # Draws the `sprite` at `location`
  end

end

# module Shiping

# 	def sprite

# 	end

# 	def draw

# 	end
# end