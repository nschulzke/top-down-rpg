class MapBroadcastJob < ApplicationJob
  def perform
    players = Player.all;
    monsters = Monster.all;
    
    map = Array.new(11){ Array.new(11) }
    players.each do |player|
      map[player.y_pos][player.x_pos] = "player"
    end
    monsters.each do |monster|
      map[monster.y_pos][monster.x_pos] = "monster"
    end
    
    ActionCable.server.broadcast "map_channel", map: map
  end
end