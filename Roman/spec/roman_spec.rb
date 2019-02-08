class Number_converter
    NUMERALS = {
        1000 => 'M',
        900 => 'CM',
        100 => 'C',
        90 => 'XC',
        50 => 'L',
        40 => 'XL',
        10 => 'X',
        9 => 'IX',
        5 => 'V',
        4 => 'IV',
        1 => 'I'
    }

    def convert(input)
        output = ''

        NUMERALS.each do | number_value, roman_numeral |
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

    it "returns XVII when number is 17" do
        expect(subject.convert(17)).to eq('XVII')
    end

    it "returns XL when number is 40" do
        expect(subject.convert(40)).to eq('XL')
    end

    it "returns L when number is 50" do
        expect(subject.convert(50)).to eq('L')
    end

    it "returns LXV when number is 65" do
        expect(subject.convert(65)).to eq('LXV')
    end

    it "returns XC when number is 90" do
        expect(subject.convert(90)).to eq('XC')
    end

    it "returns C when number is 100" do
        expect(subject.convert(100)).to eq('C')
    end

    it "returns CM when number is 900" do
        expect(subject.convert(900)).to eq('CM')
    end

    it "return M when number is 1000" do
        expect(subject.convert(1000)).to eq('M')
    end 

    it "returns MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMCMXCIX when number is 99999" do
        expect(subject.convert(99999)).to eq('MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMCMXCIX')
    end
end