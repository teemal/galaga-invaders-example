class Fort < Structure
  include Drawing
  include Destroyable
  include Damaging
  def initialize(args)
    super
    @sprite = args.fetch[:sprite]
  end

  def draw
    # Draws the `sprite` at `location`
  end

end






# module Forting

# 	def sprite

# 	end

# 	def draw

# 	end

# end