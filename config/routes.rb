Rails.application.routes.draw do
  resources :members
  resources :admins
  resources :projects
  resources :cohorts
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
