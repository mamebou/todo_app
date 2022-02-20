Rails.application.routes.draw do
  get 'chart/top', to:'chart#top'
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
