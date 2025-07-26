Rails.application.routes.draw do
  # Root homepage
  root "pages#home"

  # Project routes
  get "projects", to: "projects#index"
  get "projects/:id", to: "projects#show", as: "project"

  # Health check (leave this if needed)
  get "up" => "rails/health#show", as: :rails_health_check
end
