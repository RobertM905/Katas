class Number_converter
    def convert(input)
        numerals = [
            [10, 'X'],
            [9, 'IX'],
            [5, 'V'],
            [4, 'IV'],
            [1, 'I']
        ]
        
        output = ''

        numerals.each do | number_value, roman_numeral |
            while input >= number_value
                output += roman_numeral
                input -= number_value
            end
        end

        output
    end
end

describe Number_converter do    
    it "returns empty string when number is 0" do
        expect(subject.convert(0)).to eq('')
    end

    it "returns I when number is 1" do
        expect(subject.convert(1)).to eq('I')
    end

    it "returns II when number is 2" do
        expect(subject.convert(2)).to eq('II')
    end

    it "returns III when number is 3" do
        expect(subject.convert(3)).to eq('III')
    end

    it "returns IV when number is 4" do
        expect(subject.convert(4)).to eq('IV')
    end

    it "returns V when number is 5" do 
        expect(subject.convert(5)).to eq('V')
    end

    it "returns VI when number is 6" do
        expect(subject.convert(6)).to eq('VI')
    end

    it "returns IX when number is 9" do
        expect(subject.convert(9)).to eq('IX')
    end 

    it "returns X when number is 10" do 
        expect(subject.convert(10)).to eq('X')
    end

end