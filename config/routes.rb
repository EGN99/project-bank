Rails.application.routes.draw do
  resources :courses
  resources :admins
  resources :projects
  resources :cohorts
  resources :students

  # routrs for courses and projects
  resources :courses, only: [:index, :show] do 
    resources :projects, only: [:index, :create]
  end
end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # route for loging in a student
    post "/studentlogin", to:"sessions#logStudent" 
  # route to logout
    delete "/logout", to:"sessions#destroy"

  # Defines the root path route ("/")
  # root "articles#index"
end
