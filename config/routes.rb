Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, only: [:index]
  resources :introduce, only: [:index]
  resources :brand, only: [:index]
  resources :news, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :clients, only: [:index, :show]
  resources :contact, only: [:index]
  resources :organization, only: [:index]
  resources :valley, only: [:index]
  resources :medicine, only: [:index]
  resources :address, only: [:index]
  resources :tour, only: [:index]

  root "home#index"
end
