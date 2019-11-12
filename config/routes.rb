Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Generic route:
  # VERB PATH, to: 'CONTROLLER#ACTION'
  get '/tasks', to: 'tasks#index', as: 'tasks'

  # GET the task creation form = 1 request
  # POST the parameters to create a new task = 1 request
  get '/tasks/new', to: 'tasks#new', as: 'new'
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: 'task'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id/', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'
end
