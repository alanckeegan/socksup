Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


resources :users, only: [:show]
resources :employers, only: [:show, :new, :create] do
  resources :listings, only: [:new, :create] do
    resources :questions, only: [:new, :create]
  end
end


resources :listings, only: [:index,:show] do
  resources :submissions, only: [:create]
end

resources :submissions, only: [:show, :destroy] do
  # resources :quizzes, only: [:show]
  resources :responses, only: [:index, :new, :create]
  resources :messages, only:[:index, :create]
end

post '/employers/:employer_id/listings/new', to: 'listings#create', as: :new_listing

get 'quizzes/:quiz_id/submissions/:id', to: 'quizzes#show', as: :take_quiz
patch 'submissions/:id/submit', to: 'submissions#submit', as: :submit
patch 'submissions/:id/confirm', to: 'submissions#confirm', as: :confirm
patch 'submissions/:id/reject', to: 'submissions#reject', as: :reject
mount ActionCable.server => "/cable"
end

