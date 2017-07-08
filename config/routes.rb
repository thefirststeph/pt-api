Rails.application.routes.draw do
  root to: 'index#index'
  # get '/search' => 'search#index'
  resources :search
end
