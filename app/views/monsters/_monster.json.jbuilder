json.extract! monster, :id, :name, :x_pos, :y_pos, :health, :created_at, :updated_at
json.url monster_url(monster, format: :json)
