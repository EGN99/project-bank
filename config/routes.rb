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

    #routes for course
    resources :courses
    
    #routes for cohorts
    resources :courses do
      resources :cohorts
    end
     

    #route for getting projects under each course

    resources :courses do
      resources :projects
    end
    # route for loging in a student
    post "/studentlogin", to:"sessions#logStudent" 

    #get list of all students in the system
    get "/students", to:"students#index"

    #route for studnt signup
    post "/studentssignup", to:"students#create" 

    #get list of admins
    get "/admins", to:"admins#index"

    #route for admin signup
    post "/adminssignup", to:"admins#create" 

    # route to logout
    delete "/logout", to:"sessions#destroy"

    post '/password_reset', to: 'sessions#password_reset'
    
    get 'password_reset/:id/edit', to: 'password_reset#edit'
    patch 'password_reset/:id', to: 'password_reset#update'
  
  
  end
end


