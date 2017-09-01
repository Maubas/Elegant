Rails.application.routes.draw do
  resources :glamours
  get 'welcome/index'

  get 'welcome/index'
  #root 'welcome#index'
  root 'glamours#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/new-glamour' => 'glamours#new'
  post '/glamours' => 'glamours#create'
end
