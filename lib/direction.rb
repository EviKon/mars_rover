class Direction
  DIRECTIONS = ['N', 'E', 'S', 'W'].freeze

  def self.turn(current_direction, turn)
    current_index = DIRECTIONS.index(current_direction)

    if turn == 'L'
      DIRECTIONS[current_index - 1]
    else
      DIRECTIONS[(current_index + 1) % 4]
    end
  end
end
