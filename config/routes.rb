Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'index', to: 'lunch_cards#index'
  resources :lunch_cards
  
end
