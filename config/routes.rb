Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Generic route:
  # VERB PATH, to: 'CONTROLLER#ACTION'
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show'
end
