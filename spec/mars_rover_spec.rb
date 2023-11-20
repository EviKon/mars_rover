require_relative '../lib/grid'
require_relative '../lib/mars_rover'

RSpec.describe MarsRover do
  let(:grid) { Grid.new(4, 8) }
  let(:rover) { MarsRover.new(grid, x, y, direction) }
  let(:x) { 2 }
  let(:y) { 3 }
  let(:direction) { 'N' }

  it 'returns position' do
    expect(rover.position).to eq('(2, 3, N)')
  end

  describe '#execute' do
    it 'moves forward to the north' do
      expect(rover.execute('F')).to eq('(2, 4, N)')
    end

    it 'moves forward to the east' do
      expect(rover.execute('RF')).to eq('(3, 3, E)')
    end

    it 'moves forward to the west' do
      expect(rover.execute('LF')).to eq('(1, 3, W)')
    end

    it 'moves forward to the south' do
      expect(rover.execute('LLF')).to eq('(2, 2, S)')
    end

    it 'should move and not get lost' do
      expect(rover.execute('FLLFR')).to eq('(2, 3, W)')
    end

    it 'raises an error for unknown commands' do
      expect { rover.execute('ABC') }.to raise_error(ArgumentError)
    end

    context 'when the rover is starting at (0, 2, N) and is moving out of the grid' do
      let(:x) { 0 }
      let(:y) { 2 }
      let(:direction) { 'N' }

      it 'raises an error' do
        expect(rover.execute('FFLFRFF')).to eq('(0, 4, W) LOST')
      end
    end

    context 'when the rover is starting at (2, 3, E) and is staying in the grid' do
      let(:x) { 2 }
      let(:y) { 3 }
      let(:direction) { 'E' }

      it 'should move and not get lost' do
        expect(rover.execute('LFRFF')).to eq('(4, 4, E)')
      end
    end

    context 'when the rover is starting at (1, 0, S) and is moving out of the grid' do
      let(:x) { 1 }
      let(:y) { 0 }
      let(:direction) { 'S' }

      it 'raises an error' do
        expect(rover.execute('FFRLF')).to eq('(1, 0, S) LOST')
      end
    end
  end
end