require_relative '../lib/direction'

RSpec.describe Direction do
  subject { described_class }
  describe '#turn' do
    context 'when turning left (L)' do
      it 'changes direction from N to W' do
        expect(subject.turn('N', 'L')).to eq('W')
      end

      it 'changes direction from E to N' do
        expect(subject.turn('E', 'L')).to eq('N')
      end

      it 'changes direction from S to E' do
        expect(subject.turn('S', 'L')).to eq('E')
      end

      it 'changes direction from W to S' do
        expect(subject.turn('W', 'L')).to eq('S')
      end
    end

    context 'when turning right (R)' do
      it 'changes direction from N to E' do
        expect(subject.turn('N', 'R')).to eq('E')
      end

      it 'changes direction from E to S' do
        expect(subject.turn('E', 'R')).to eq('S')
      end

      it 'changes direction from S to W' do
        expect(subject.turn('S', 'R')).to eq('W')
      end

      it 'changes direction from W to N' do
        expect(subject.turn('W', 'R')).to eq('N')
      end
    end
  end
end
