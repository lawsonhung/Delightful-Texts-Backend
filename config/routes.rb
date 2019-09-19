Rails.application.routes.draw do
  resources :ice_cream_orders
  resources :orders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index]
      post '/login', to: 'auth#create'
      post '/profile', to: 'users#profile'
    end
  end
end
