Rails.application.routes.draw do


  # routes for courses 
  resources :courses 
  

  #routes for students
  resources :students, only: [:index, :create, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #sign ip for admin
  post "/adminssignup", to:"admins#create"
  #route for loging in an admin
  post "/admin_login", to: "sessions#logAdmin"
  #route to logout
  delete "/logout", to: "sessions#destroy"

  # devise_for :admins

   

    resources :students, only: [:index, :password_reset]

  
  resources :cohorts, only: [:index, :show, :create, :destroy]

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
end

end
