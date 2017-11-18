Rails.application.routes.draw do
  devise_for :admins, controllers: {sessions: 'admins/sessions'}

  resources :home, only: [:index]
  resources :introduce, only: [:index]
  resources :brand, only: [:index]
  resources :news, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :clients, only: [:index, :show]
  resources :contact, only: [:index]
  resources :company, only: [:index]
  resources :valley, only: [:index]
  resources :medicine, only: [:index]
  resources :address, only: [:index]
  resources :tour, only: [:index]

  namespace :manage do 
    resources :introduces, only: [:index, :new, :create, :edit, :update] 
    resources :brands, only: [:index, :new, :create, :edit, :update] 
    resources :contacts, only: [:index, :new, :create, :edit, :update] 
    resources :companies, only: [:index, :new, :create, :edit, :update] 
    resources :valleys, only: [:index, :new, :create, :edit, :update] 
    resources :medicines, only: [:index, :new, :create, :edit, :update] 
    resources :addresses, only: [:index, :new, :create, :edit, :update] 
    resources :tours, only: [:index, :new, :create, :edit, :update] 
    resources :news
    resources :clients
    resources :products
    resources :carsousels
  end

  namespace :kindeditor do
    resources :assets
  end

  root "home#index"
end
