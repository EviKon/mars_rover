class Grid
  attr_reader :width, :height

  def initialize(width, height)
    @height = height
    @width = width    
  end

  def on_the_grid?(x, y)
    x >= 0 && x <= width && y >= 0 && y <= height
  end
end