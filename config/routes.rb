Rails.application.routes.draw do
  get "blogs/index/:id" => "blogs#index"
  get "blogs/index_t2/:id" => "blogs#index_t2"
  resources :blogs

  get "signup" => "families#new"
  post "families/create" => "families#create"
  post "families/search" => "families#search"
  get "families/:id" => "families#show"

  get "users/index" =>"users/index"
  get "users/new" => "users#new"
  get "users/add" => "users#add"
  post "users/create" => "users#create"
  get "users/:id" => "users#show"
  post "login" => "users#login"
  get "login" => "users#login_form"
  post "logout" => "users#logout"

  get "/" => "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
