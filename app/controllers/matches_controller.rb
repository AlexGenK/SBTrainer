class MatchesController < ApplicationController
  before_action :set_champioship

  def index
    @matches = @championship.matches.order(date: 'desc')
  end

  private

  def set_champioship
    @championship = Championship.find(params[:championship_id])
  end
end
