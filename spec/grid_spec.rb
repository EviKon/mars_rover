require_relative '../lib/grid'

RSpec.describe Grid do
  let(:grid) { Grid.new(5, 5) }

  describe '#on_the_grid?' do
    it 'returns true when coordinates are within the grid' do
      expect(grid.on_the_grid?(3, 3)).to eq(true)
    end

    it 'returns true when coordinates are on the grid boundary' do
      expect(grid.on_the_grid?(5, 5)).to eq(true)
    end

    it 'returns false when x-coordinate is outside the grid' do
      expect(grid.on_the_grid?(6, 2)).to eq(false)
    end

    it 'returns false when y-coordinate is outside the grid' do
      expect(grid.on_the_grid?(3, 6)).to eq(false)
    end

    it 'returns false when both coordinates are outside the grid' do
      expect(grid.on_the_grid?(6, 6)).to eq(false)
    end

    it 'returns false when x-coordinate is negative' do
      expect(grid.on_the_grid?(-1, 3)).to eq(false)
    end

    it 'returns false when y-coordinate is negative' do
      expect(grid.on_the_grid?(3, -1)).to eq(false)
    end

    it 'returns true when coordinates are at the origin' do
      expect(grid.on_the_grid?(0, 0)).to eq(true)
    end

    it 'returns true when coordinates are at the maximum width and height' do
      expect(grid.on_the_grid?(grid.width, grid.height)).to eq(true)
    end
  end
end
