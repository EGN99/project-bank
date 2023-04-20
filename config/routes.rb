Rails.application.routes.draw do
    resources :students, only: [:index, :password_reset]

  
    resources :courses do
      resources :projects
    end
    # route for loging in a student
    post "/studentlogin", to:"sessions#logStudent" 
    # route to logout
    delete "/logout", to:"sessions#destroy"

    post '/password_reset', to: 'sessions#password_reset'
    get 'password_reset/:id/edit', to: 'password_reset#edit'
    patch 'password_reset/:id', to: 'password_reset#update'
  
  
  end
  