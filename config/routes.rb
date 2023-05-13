Rails.application.routes.draw do
  namespace :app do
    resources :freestyle
    resources :trainings
  end
  devise_for :users
  root 'website/pages#home'
  get '/about', to: "website/pages#about"
  get '/contact', to: "website/contacts#new"
  get '/pricing', to: "website/pages#pricing"
  post '/contacts', to: "website/contacts#create"
  get '/filter_page', to: "app/freestyle#filter_page"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

