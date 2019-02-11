require "bowling"

describe Bowling do 
   it "returns a score of 0 when nothing has been thrown" do
      bowling = Bowling.new
      expect(bowling.score).to eq(0)
    end

    it "returns a score of 0 when the player doesnt hit anything with their first ball" do
      bowling = Bowling.new
      bowling.throw(0)
      expect(bowling.score).to eq(0)
    end

    it "returns a score of 0 with a full game of no pins" do
      bowling = Bowling.new
      20.times { bowling.throw(0) }
      expect(bowling.score).to eq(0)
    end

    it "returns a score of 20 if a full game of only ones" do
      bowling = Bowling.new
      20.times { bowling.throw(1) }
      expect(bowling.score).to eq(20)
    end

    it "returns a score of 18 when a spare and a roll of 4 is made in a game" do
      bowling = Bowling.new
      2.times{ bowling.throw(5) }
      bowling.throw(4)
      expect(bowling.score).to eq(18)
    end
end