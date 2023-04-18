Rails.application.routes.draw do
  
    resources :courses do
      resources :projects
    end
  
    # route for loging in a student
      post "/studentlogin", to:"sessions#logStudent" 
    # route to logout
      delete "/logout", to:"sessions#destroy"

  end
  