require 'persistence'

describe Persistence do

    it 'gives a response of 0 if the input is 0' do
        persistence = Persistence.new
        expect(persistence.test(0)).to eq(0)
    end

    it 'gives a response of 0 whenn the input is a single digit' do
        persistence = Persistence.new
        expect(persistence.test(5)).to eq(0)
    end

    it 'gives a response of of 1 if the input is 11' do
        persistence = Persistence.new
        expect(persistence.test(11)).to eq(1)
    end

    it 'gives a response of 1 if the input is 13' do
        persistence = Persistence.new
        expect(persistence.test(13)).to eq(1)
    end

    it 'gives a response of 2 if the input is 22' do
        persistence = Persistence.new
        expect(persistence.test(25)).to eq(2)
    end

    it 'gives a response of 3 if the input is 39' do
        persistence = Persistence.new
        expect(persistence.test(39)).to eq(3)
    end

    it 'gives a responce of 4 if the input is 999' do 
        persistence = Persistence.new
        expect(persistence.test(999)).to eq(4)
    end

    it 'gives a responce of 1 if the input is 909' do
        persistence = Persistence.new
        expect(persistence.test(909)).to eq(1)
    end


end