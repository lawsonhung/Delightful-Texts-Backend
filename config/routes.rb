Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      resources :ice_cream_orders
      resources :ice_creams
      post '/login', to: 'auth#create'
      post '/profile', to: 'users#profile'
    end
  end
end
