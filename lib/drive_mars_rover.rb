require_relative 'grid'
require_relative 'mars_rover'

grid = Grid.new(4, 8)
rover = MarsRover.new(grid, 2, 3, 'E')
puts rover.execute('LFRFF') # Output: (4, 4, E)

rover = MarsRover.new(grid, 0, 2, 'N')
puts rover.execute('FFLFRFF') # Output: (0, 4, W) LOST

rover = MarsRover.new(grid, 2, 3, 'N')
puts rover.execute('FLLFR') # Output: (2, 3, W)

rover = MarsRover.new(grid, 1, 0, 'S')
puts rover.execute('FFRLF') # Output: (1, 0, S) LOST
