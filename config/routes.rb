Rails.application.routes.draw do
  get 'users/index'
  get "users/:id" => "users#show"
  get "signup" => "users#new"
  post "login" => "users#login"
  get "login" => "users#login_form"

  get "/" => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
