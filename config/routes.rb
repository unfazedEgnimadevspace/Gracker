Rails.application.routes.draw do
  get 'contacts/create'
  get 'contacts/new'
  devise_for :users
  root 'website/pages#home'
  get '/about', to: "website/pages#about"
  get '/pricing', to: "website/pages#pricing"
  get '/contact', to: "website/contacts#new"
  post '/contacts', to: "website/contacts#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

