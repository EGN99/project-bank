Rails.application.routes.draw do
  resources :members
  resources :admins
  resources :projects
  resources :cohorts
  resources :students


end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #route for loging in an admin
  post "/admin_login", to: "sessions#loginAdmin"
  #route to logout
  delete "/logout", to: "sessions#destroy"

  # devise_for :admins

  namespace :api do
    namespace :v1 do
    resources :admins do 
    resources :cohorts 
    resources :projects
    end
  end
end


end
