Rails.application.routes.draw do
  resources :topics, only: :index
  resources :flashcards
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  resources :users, only: :create
  get '/topics/:topic_id/flashcards/:id', to: 'topics#add_flashcards_to_topics'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
