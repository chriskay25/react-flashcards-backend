Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auths#create'
      resources :users
      resources :decks
      resources :cards
    end
  end
end
