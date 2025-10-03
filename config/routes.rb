# config/routes.rb
Rails.application.routes.draw do
  # List all
  get    "/tasks",          to: "tasks#index",  as: :tasks
  # New + Create
  get    "/tasks/new",      to: "tasks#new",    as: :new_task
  post   "/tasks",          to: "tasks#create"
  # Show
  get    "/tasks/:id",      to: "tasks#show",   as: :task
  # Edit + Update
  get    "/tasks/:id/edit", to: "tasks#edit",   as: :edit_task
  patch  "/tasks/:id",      to: "tasks#update"
  # Destroy
  delete "/tasks/:id",      to: "tasks#destroy"
end
