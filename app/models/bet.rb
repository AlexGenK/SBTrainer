class Bet < ApplicationRecord
  belongs_to :match
  belongs_to :user

  def win?
    return nil unless self.match.played?
    win = false
    
    case self.result
    when 0
      win = true if self.match.score1 == self.match.score2
    when 1
      win = true if self.match.score1 > self.match.score2
    when 2
      win = true if self.match.score1 < self.match.score2
    end

    win
  end
end
