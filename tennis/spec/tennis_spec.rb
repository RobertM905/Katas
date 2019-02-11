require 'tennis'

describe Tennis do
  let(:tennis) { subject }

  it 'returns 0-0 for a new game' do
    expect(tennis.score).to eq('0-0')
  end

  context 'when only player one scores' do
    it 'returns 15-0 when player one scores a point' do
      tennis.win_point(:player_one)
      expect(tennis.score).to eq('15-0')
    end

    it 'returns 30-0 when player one scores two points' do
      2.times { tennis.win_point(:player_one) }
      expect(tennis.score).to eq('30-0')
    end

    it 'returns 40-0 when player one scores three points' do
      3.times { tennis.win_point(:player_one) }
      expect(tennis.score).to eq('40-0')
    end

    it 'returns player one wins if player one scores four times without loss' do
      4.times { tennis.win_point(:player_one) }
      expect(tennis.score).to eq('Player one wins')
    end
  end

  context 'when only player two scores' do
    it 'returns 0-15 when player two scores a point' do
      tennis.win_point(:player_two)
      expect(tennis.score).to eq('0-15')
    end

    it 'returns 0-30 when player two scores two points' do
      2.times { tennis.win_point(:player_two) }
      expect(tennis.score).to eq('0-30')
    end

    it 'returns 0-40 when player two scores three points' do
      3.times { tennis.win_point(:player_two) }
      expect(tennis.score).to eq('0-40')
    end

    it 'returns player two wins if player two scores four times without loss' do
      4.times { tennis.win_point(:player_two) }
      expect(tennis.score).to eq('Player two wins')
    end
  end

  context 'when deuce' do
    before do
      3.times do
        tennis.win_point(:player_one)
        tennis.win_point(:player_two)
      end
    end

    it 'returns deuce if both players have 40 score' do
      expect(tennis.score).to eq('Deuce')
    end

    it 'returns advantage for player one if player one scores after a deuce' do
      tennis.win_point(:player_one)
      expect(tennis.score).to eq('Advantage player one')
    end

    it 'returns advantage for player two if player two scores after a deuce' do
      tennis.win_point(:player_two)
      expect(tennis.score).to eq('Advantage player two')
    end

    it 'returns player one wins if player one scores after an advantage' do
      2.times { tennis.win_point(:player_one) }
      expect(tennis.score).to eq('Player one wins')
    end

    it 'returns player two wins if player two scores after an advantage' do
      2.times { tennis.win_point(:player_two) }
      expect(tennis.score).to eq('Player two wins')
    end

    it 'returns deuce if player two scores during advantage player one' do
      tennis.win_point(:player_one)
      tennis.win_point(:player_two)
      expect(tennis.score).to eq('Deuce')
    end

    it 'returns deuce if player one scores during advantage player two' do
      tennis.win_point(:player_two)
      tennis.win_point(:player_one)
      expect(tennis.score).to eq('Deuce')
    end

    it 'returns player one wins if player one scores twice from a double deuce' do
      3.times do
        tennis.win_point(:player_two)
        tennis.win_point(:player_one)
      end
      2.times { tennis.win_point(:player_one) }
      expect(tennis.score).to eq('Player one wins')
    end
  end
end
