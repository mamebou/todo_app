Rails.application.routes.draw do
  get 'home/top'
  root   'tasks#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get   '/signup',  to: 'sessions#signup'
  post   '/signup',  to: 'sessions#signup'
  delete '/logout',  to: 'sessions#destroy'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
