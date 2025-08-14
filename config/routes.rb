Rails.application.routes.draw do
  # Root homepage
  root "pages#home"

  # About page
  get "about", to: "pages#about"

  # Projects page - use pages controller
  get "projects", to: "pages#projects"  # Change back to pages#projects

  # Add contact page
  get "contact", to: "pages#contact"

  # Individual project routes (if you still need them)
  get "projects/:id", to: "projects#show", as: "project"

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
