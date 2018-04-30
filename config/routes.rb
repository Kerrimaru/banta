Rails.application.routes.draw do
  resources :rooms, :users
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root to: "users#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
