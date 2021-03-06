Rails.application.routes.draw do

  devise_for :users
  namespace :api do
    namespace :v1 do
        resources :comments
        resources :series
        resources :users, only: [:create, :index]
        post "/auth", to: "users#auth"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
