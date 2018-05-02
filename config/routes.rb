Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  resources :rooms, :users, :messages
=======
  resources :users, :rooms 
>>>>>>> 538557b665cecb3e1d976064b0602d2fe6d32dfd

  root to: "rooms#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
