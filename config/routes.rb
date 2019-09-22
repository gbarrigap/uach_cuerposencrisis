Rails.application.routes.draw do

  root 'home#landing'

  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :obras, only: [:show]

end
