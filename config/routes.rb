Rails.application.routes.draw do
  resources :order_items
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  resources :available_items
  resources :shared_orders
  resources :sources
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
