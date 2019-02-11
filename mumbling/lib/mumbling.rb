def accum(s)
    output = []
    string_array = s.chars
    string_array.each_index do | index |
      letter_string = ""
      letter_string << string_array[index].upcase
      counter = 0
      while counter < index do
        letter_string << string_array[index].downcase
        counter += 1
      end
      output.push letter_string
    end
      output.join("-")
  end