Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :home do
    get :introduce
    get :brand
    get :news
    get :news_list
    get :product
    get :product_list
    get :client
    get :client_list
    get :contact
    get :company
    get :valley
    get :medicine
    get :address
    get :tour
  end
  root "home#index"
end
