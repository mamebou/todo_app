Rails.application.routes.draw do
  root  'home#top'
  get   '/top',    to: 'home#top'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get   '/signup',  to: 'sessions#signup'
  post   '/signup',  to: 'sessions#signup'
  delete '/logout',  to: 'sessions#destroy'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
