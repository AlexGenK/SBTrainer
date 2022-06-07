class BetsController < ApplicationController
  before_action :set_championship
  before_action :set_match

  def new
    @bet = @match.bets.new
    @res_list = @match.results_list
  end

  def create
    @bet = @match.bets.new(bet_params)
    case @bet.result
    when 0
      @bet.k = @match.draw_k
    when 1
      @bet.k = @match.team1_k
    else
      @bet.k = @match.team2_k
    end
    @bet.user_id = current_user.id
    if @bet.save
      current_user.account.sum -= @bet.sum
      current_user.account.save
      redirect_to championship_matches_path(@championship)
    else
      flash[:alert] = 'Unable to create a bet'
      render :new
    end
  end

  private

  def set_championship
    @championship = Championship.find(params[:championship_id])
  end

  def set_match
    @match = @championship.matches.find(params[:match_id])
  end

  def bet_params
    params.require(:bet).permit(:result, :sum)
  end
end
