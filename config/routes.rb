Rails.application.routes.draw do
  root to: 'store#index', as: 'store_index'

  resources :products
end
