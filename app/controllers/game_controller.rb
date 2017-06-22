class GameController < ApplicationController
  def map
    @players = Player.all;
    @player = Player.find(params[:id])
  end

  def menu
  end
end
