Rails.application.routes.draw do
  
    resources :courses do
      resources :projects
    end
  
  end
  