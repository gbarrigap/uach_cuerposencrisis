Rails.application.routes.draw do

  root 'home#landing'

  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/media/datos', to: 'media#datos', as: :datos_media
  get '/media/pdf', to: 'media#pdf', as: :pdf_media

  resources :obras, only: [:show]
  resources :conceptos, only: [:show]

end
