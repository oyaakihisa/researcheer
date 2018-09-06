Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root 'researchers#index'    
  resources :researchers do
    resources :comments, only: [:create]
    resources :advertisements, only: [:create]
    resources :cheers, only: [:create, :new]
  end
  
  resources :users, only: [:show]
  

end
