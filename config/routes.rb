Rails.application.routes.draw do
  devise_for :users

  resources :categories

  namespace :admin do
    resources :services
  end

  resources :users, only: [:show]
  
  resources :services do
    resource :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end