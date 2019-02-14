require "bowling"

describe Bowling do
    let(:game) { Bowling.new }

    def gutter_ball(number)
        number.times { game.bowl(0) }
    end

    def given_spare
        2.times { game.bowl(5) }
    end

    it 'can give a score of 0 when player never scores' do
        gutter_ball(20)
        expect(game.score).to eq(0)
    end

    it 'can give a score of 20 when a player scores ones' do
        20.times { game.bowl(1) }
        expect(game.score).to eq(20)
    end

    it 'can give a score of 16 when a player scores a three after a spare' do
        given_spare
        game.bowl(3)
        gutter_ball(17)
        expect(game.score).to eq(16)
    end

    it 'can give a score of 16 when a player scores a three after a spare' do
        gutter_ball(2)
        given_spare
        game.bowl(3)
        gutter_ball(15)
        expect(game.score).to eq(16)
    end

    it 'can give a score of 35 when a player scores two spares' do
        given_spare
        2.times { game.bowl(3) }
        given_spare
        game.bowl(3)
        gutter_ball(13)
        expect(game.score).to eq(35)
    end

    it 'can give a score of 34 when a players scores two spares consecutively' do
        2.times { given_spare }
        2.times { game.bowl(3) }
        gutter_ball(16)
        expect(game.score).to eq(34)
    end

    it 'can give a score of 22 when a player scores a strike' do
        game.bowl(10)
        2.times { game.bowl(3) }
        gutter_ball(16)
        expect(game.score).to eq(22)
    end

    it 'can correctly score two strikes in a game' do
        game.bowl(10)
        2.times { game.bowl(3) }
        game.bowl(10)
        2.times { game.bowl(3) }
        gutter_ball(12)
        expect(game.score).to eq(44)
    end
end