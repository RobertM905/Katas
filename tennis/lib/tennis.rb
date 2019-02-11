class Tennis
  POINTS = %w[0 15 30 40].freeze

  def initialize
    @player_one_points = 0
    @player_two_points = 0
  end

  def score
    return 'Deuce' if deuce?
    return 'Advantage player one' if advantage_player_one?
    return 'Advantage player two' if advantage_player_two?
    return 'Player one wins' if win_player_one?
    return 'Player two wins' if win_player_two?

    "#{POINTS[@player_one_points]}-#{POINTS[@player_two_points]}"
  end

  def win_point(player)
    if advantage_player_one? && player == :player_two
      @player_one_points -= 1
    elsif advantage_player_two? && player == :player_one
      @player_two_points -= 1
    else
      @player_one_points += 1 if player == :player_one
      @player_two_points += 1 if player == :player_two
    end
  end

  private

  def deuce?
    @player_one_points == 3 && @player_two_points == 3
  end

  def advantage_player_one?
    @player_one_points == 4 && @player_two_points == 3
  end

  def advantage_player_two?
    @player_one_points == 3 && @player_two_points == 4
  end

  def win_player_one?
    @player_one_points >= 4
  end

  def win_player_two?
    @player_two_points >= 4
  end
end
