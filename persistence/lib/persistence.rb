class Persistence
  def test(number)
    number < 10 ? 0 : 1 + test(number.digits.inject(:*))
  end
end