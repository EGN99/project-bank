Rails.application.routes.draw do
  resources :members
  resources :admins
  resources :projects
  resources :cohorts
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # route for loging in a student
    post "/student_login", to :"sessions#logStudent" 
  # route to logout
    delete "/logout", to :"sessions#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end
