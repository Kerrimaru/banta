Rails.application.routes.draw do
  devise_for :users

  resources :rooms, :users, :messages

  root to: "rooms#index"

  post '/rooms/:id', to: 'messages#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
