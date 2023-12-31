Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :users
  resources :users, only: [:index, :show]
  resources :posts, only: [:new, :index, :show, :create, :destroy, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
