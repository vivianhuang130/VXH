Rails.application.routes.draw do

  root 'pictures#index'
  #
  resources :users do
    resources :pictures do
      resources :comments
    end
  end

  resources :sessions, only:[:new, :create]
  get '/login' => 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
