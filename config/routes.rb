Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  get 'home/about' => 'home#about', as: 'about'
  resources :users, only: [:show, :edit, :index, :update]
  resources :books, only: [:new, :index, :show, :create, :destroy, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
