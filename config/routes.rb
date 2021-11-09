Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Creating a new task
  get 'tasks/new', to: 'tasks#new', as: :task_new
  post 'tasks', to: 'tasks#create', as: :tasks
  # Display all tasks
  get 'tasks', to: 'tasks#index'
  # Showing one task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'
end
