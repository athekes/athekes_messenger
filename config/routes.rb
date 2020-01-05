Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :contacts, only: [:index, :new, :create, :destroy]
  resources :chats, only: [:index, :show]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
