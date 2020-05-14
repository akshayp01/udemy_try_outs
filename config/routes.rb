Rails.application.routes.draw do
  root "chatbox#index"
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
