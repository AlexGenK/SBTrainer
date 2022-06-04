class BetsController < ApplicationController
  before_action :set_championship
  before_action :set_match

  def new
    @bet = @match.bets.new
  end

  private

  def set_championship
    @championship = Championship.find(params[:championship_id])
  end

  def set_match
    @match = @championship.matches.find(params[:match_id])
  end
end
