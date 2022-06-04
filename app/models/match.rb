class Match < ApplicationRecord
  belongs_to :championship
  has_many :bets

  def results_list
    a=[]
    a << ['Draw', 0]
    a << ["#{self.team1} win", 1]
    a << ["#{self.team2} win", 2]
  end
  
end
