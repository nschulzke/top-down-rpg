class GameController < ApplicationController
  def map
    @player = Player.first
  end

  def menu
  end
end
