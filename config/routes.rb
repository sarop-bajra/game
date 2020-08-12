Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#welcome'
  get '/home' => 'pages#home'

  # Session routes:

  # login form
  get '/login' => 'session#new'

  # form submits here, do authentication and create session, redirect or show form with errors
  post '/login' => 'session#create'

  # logout, ie delete session for this user
  delete '/login' => 'session#destroy'

  # Users CRUD
  resources :users

  # FantasyTeams CRUD
  resources :fantasyteams

  # Players CRUD
  resources :players

  # Teams CRUD
  resources :teams
end
