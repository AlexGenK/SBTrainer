class CalculateMoneyService
  def self.call(user)
    return nil if user == nil
    @bets = user.bets.where(played: false)
    @bets.each do |bet|
      if bet.match.played?
        bet.played = true
        all_sum = bet.sum * bet.k
        if bet.win?
          user.account.sum += all_sum
          user.account.win += all_sum
        else
          user.account.sum -= all_sum
          user.account.spend += all_sum
        end
        bet.save
        user.account.save
      end
    end
  end
end