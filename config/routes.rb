Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/failure'
  get 'sessions/new', to: 'sessions#new', as: 'login'
  resources :diaries, only: [:new, :create, :show]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: 'sessions#failure'
  delete '/logout', to: 'sessions#destroy'
  post '/auth/twitter2', to: 'sessions#auth_twitter2', as: 'auth_twitter2'
end

