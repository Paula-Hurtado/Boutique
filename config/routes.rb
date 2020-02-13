Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: "outfits#index"
  resources :users, only: [:show] 
  resources :outfits do
    get "wishlist", on: :collection
    resources :wish_list_items, only: [:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
