Rails.application.routes.draw do
  resources :fundrrs, only: [:index]
  root to: 'home#index'
end

#Routes read top to bottom. 
