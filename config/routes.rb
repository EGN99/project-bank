Rails.application.routes.draw do
  resources :members
  resources :admins
  resources :projects
  resources :students

  # routes for courses and projects
  resources :courses do 
    resources :projects
  
  end
  # routes for courses and cohorts
  resources :courses do
    resources :cohorts 
  end

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

   namespace :api do
     namespace :v1 do
    resources :admins do 
    resources :projects
    end
  end
end

end
