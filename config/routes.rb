Rails.application.routes.draw do

  resources :series do
    resources :comments
  end

  resources :comments
  resources :series
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
