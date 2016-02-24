Rails.application.routes.draw do
  resources :fundrrs, only: [:index, :new, :create, :show]
  root to: 'home#index'
end

#Routes read top to bottom. 
