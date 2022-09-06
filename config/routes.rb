Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auths#create'
      post '/signup', to: 'users#create'
      get '/auth', to: 'auths#get_current_user'
      resources :users
      resources :decks do
        resources :cards, only: [:create]
      end
      resources :cards, except: [:create]
    end
  end
end
