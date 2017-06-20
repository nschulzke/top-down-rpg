Rails.application.routes.draw do
  resources :players
  root to: 'game#menu'
  
  get 'players/:id/up', to: 'players#up', as: 'player_up'
  get 'players/:id/down', to: 'players#down', as: 'player_down'
  get 'players/:id/left', to: 'players#left', as: 'player_left'
  get 'players/:id/right', to: 'players#right', as: 'player_right'

  get 'map', to: 'game#map', as: 'game_map'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
