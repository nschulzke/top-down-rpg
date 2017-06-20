Rails.application.routes.draw do
  resources :players
  root to: 'game#map'

  get 'game/menu'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
