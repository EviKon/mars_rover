require_relative 'grid'
require_relative 'direction'

class MarsRover

  def initialize(grid, x, y, direction)
    @x = x
    @y = y
    @direction = direction
    @grid = grid
    @lost = false
  end

  def execute(commands)
    commands.each_char do |command|
      break if @lost

      if command == 'L' || command == 'R'
        @direction = Direction.turn(@direction, command)
      elsif command == 'F'
        move
      else
        raise ArgumentError.new("Unknown command: #{command}")
      end
    end

    position
  end

  def position
    return "(#{@x}, #{@y}, #{@direction}) LOST" if @lost

    "(#{@x}, #{@y}, #{@direction})"
  end

  private

  def move
    new_x, new_y = @x, @y

    case @direction
    when 'N'
      new_y += 1
    when 'E'
      new_x += 1
    when 'S'
      new_y -= 1
    when 'W'
      new_x -= 1
    end

    if @grid.on_the_grid?(new_x, new_y)
      @x = new_x
      @y = new_y
    else
      @lost = true
    end
  end
end