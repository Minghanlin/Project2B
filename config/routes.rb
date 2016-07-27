Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'

  # static pages routes, not connected to models
  get '/home', to: 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'

  # dynamic routes
  get '/register', to: 'users#new'

  #login routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # restful routes
  resources :users, except: [ :new ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
