Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: "outfits#index"
  resources :users, only: [:show] 
  resources :outfits
  get "/outfits", to: "outfit#new"
  get "/outfits", to: "outfit#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
