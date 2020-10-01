Rails.application.routes.draw do
  resources :diets , except: [:index]
  resources :breakfast_cards
  resources :lunch_cards
  resources :patients
  
end
