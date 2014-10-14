Liftilog::Application.routes.draw do
  get "sessions/create"
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  
  root 'homes#show'
end
