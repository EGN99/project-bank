Rails.application.routes.draw do
  
    resources :courses do
      resources :projects
    end
    
    resources :cohorts, only: [:index, :show, :create, :destroy]
  end
  