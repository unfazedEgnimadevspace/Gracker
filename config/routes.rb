Rails.application.routes.draw do
  devise_for :users
  root 'website/pages#home'
  get '/about', to: "website/pages#about"
  get '/contact', to: "website/pages#contact"
  get '/pricing', to: "website/pages#pricing"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

