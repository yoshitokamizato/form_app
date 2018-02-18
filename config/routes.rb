Rails.application.routes.draw do
  get 'station/index'

  root to: 'params#index'
  get '/params' => 'params#index'
  post '/params' => 'params#show'
  get '/params/new' => 'params#show_get'
  resources :station
end
