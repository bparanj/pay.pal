Rails.application.routes.draw do
  resources :products
  resources :categories
  resources :carts
  resources :line_items
  
  get '/view_cart' => 'carts#show', as: :current_cart
  
  root 'products#index'
end
