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
  
    NUMERALS.each do | key, value |
    while input >= key
        output += value
        input -= key
      end
    end
    output
  end
  
end 
