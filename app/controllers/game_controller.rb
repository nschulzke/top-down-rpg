class GameController < ApplicationController
  def map
    @players = Player.all;
    @monsters = Monster.all;
    @player = Player.find(params[:id])
    
    @map = Array.new(11){ Array.new(11) }
    @players.each do |player|
      @map[player.y_pos][player.x_pos] = "player"
    end
    @monsters.each do |monster|
      @map[monster.y_pos][monster.x_pos] = "monster"
    end
  end

  def menu
  end
end
