class Bowling 

  def initialize
    @score = 0
  end

  def score
    @score
  end

  def throw(pins_knocked_down)
    @score += pins_knocked_down
  end

end