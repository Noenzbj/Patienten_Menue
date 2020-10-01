Rails.application.routes.draw do
  root 'welcome#index'
  resources :lunch_cards
  resources :patients
  resources :diets , except: [:index]
  resources :breakfast_cards, except: [:index]

  get '/search' => 'patients#search', :as => 'search_page'
end
