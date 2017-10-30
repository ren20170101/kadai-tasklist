Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  #get 'users/index'
  #get 'users/show'
  #get 'users/new'
  #get 'users/create'

  #get 'toppages/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: 'tasks#index'
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  get 'tasks/:id/edit', to: 'tasks#edit'
  resources :users, only: [:index, :show, :new, :create]
  resources :tasks
  #, only: [:create, :destroy ,:update,:edit]
end
