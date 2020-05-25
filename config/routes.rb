Rails.application.routes.draw do
  
  resources :posts  do
    resources :comments, only: [:create]
    resources :likes, only: %i[create destroy]
  end
  devise_for :users
  get 'users', to: 'users#index' , as: 'users' 
  get 'users/:username', to: 'users#show' , as: 'show_user'
  get 'users/:username/edition', to: 'users#edit' , as: 'edit_user'
  
  
  root 'posts#index'

end
