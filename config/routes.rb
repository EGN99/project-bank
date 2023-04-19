Rails.application.routes.draw do
  resources :courses
  resources :admins
  resources :projects
  resources :cohorts
  resources :students

  # routes for students 
  resources :students, only: [:index, :show, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # route for loging in a student
    post "/studentlogin", to:"sessions#logStudent" 
  # route to logout
    delete "/logout", to:"sessions#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end
