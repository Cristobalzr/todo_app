Rails.application.routes.draw do
  get '/todos', to: 'todos#index'
  root 'todos#index'
  get 'todos/new'
  get 'todos/list'
  post 'todos', to: 'todos#create', as: 'create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit'
  patch 'todos/:id', to: 'todos#update', as: 'update'
  delete 'todos/:id', to: 'todos#destroy', as: 'delete'
  get 'todos/:id/complete', to: 'todos#complete', as: 'complete'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
