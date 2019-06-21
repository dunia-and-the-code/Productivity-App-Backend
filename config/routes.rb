Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :tasks, only: [:index, :show, :create, :destroy]
  resources :journal_posts, only: [:index, :show, :create, :update]
  resources :excuses
end
