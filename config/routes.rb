Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :users
resources :employers do
  resources :listings, only: [:new, :create]
end


resources :quizzes, except: [:index, :show] do
  resources :questions, only: [:new, :create]
  resources :responses, only: [:index, :new, :create]
end


resources :listings, only: [:index,:show, :update, :edit, :delete] do
  resources :submissions, only: [:create]
end

resources :questions, only: [:edit, :update, :delete]
resources :submissions, only: [:delete]
resources :submissions, only: [:show, :delete] do
  resources :quizzes, only: [:show]
end


end
