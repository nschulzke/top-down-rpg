class GameController < ApplicationController
  def map
    @players = Player.all;
    @monsters = Monster.all;
    @player = Player.find(params[:id])
  end

  def menu
  end
end
