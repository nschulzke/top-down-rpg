json.extract! player, :id, :name, :x_pos, :y_pos, :health, :created_at, :updated_at
json.url player_url(player, format: :json)
