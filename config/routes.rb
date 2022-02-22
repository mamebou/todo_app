Rails.application.routes.draw do
  root to: 'home#first'
  get 'chart/top', to:'chart#top'
  get '/board_top', to:'boards#board_top'
  get   '/top',    to: 'home#top'
  get   '/detail', to: 'home#detail'
  post   '/detail', to: 'home#detail'
  get   '/doing',  to: 'home#doing'
  get   '/done',   to: 'home#done'
  get   'home/state',   to: 'home#state'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get   '/signup',  to: 'sessions#signup'
  post   '/signup',  to: 'sessions#signup'
  delete '/logout',  to: 'sessions#destroy'
  resources :tasks
  resources :boards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
