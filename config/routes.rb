Rails.application.routes.draw do
  devise_for :users
  root 'draft_boards#index'
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
