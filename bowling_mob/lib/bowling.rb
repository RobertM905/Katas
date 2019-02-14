class Bowling
    def initialize
        @score = [0]
    end

    def bowl(pins_hit)
        @score << pins_hit
    end

    def score
        bonus_score = 0
        @score.each_index do |index|
            if @score[index] == 10
                bonus_score += (@score[index + 1] + @score[index + 2])
            end
        
            if index.even? 
                if @score[index] + @score[index - 1] == 10
                    bonus_score += @score[index + 1]
                end
            end
        end 
        bonus_score + @score.sum
    end
end