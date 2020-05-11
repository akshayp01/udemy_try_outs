Rails.application.routes.draw do
  root "chatbox#index"
  get '/login', to: 'sessions#new'
end
