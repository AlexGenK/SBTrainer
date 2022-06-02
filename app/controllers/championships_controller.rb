class ChampionshipsController < ApplicationController
  def index
    @championships = Championship.order(:name)
  end
end
