Rails.application.routes.draw do
  namespace :app do 
    resources :freestyle 
    resources :training
  end
  devise_for :users
  root 'website/pages#home'
  get '/about', to: "website/pages#about"
  get '/contact', to: "website/pages#contact"
  get '/pricing', to: "website/pages#pricing"
  get '/freetraining', to: "app/freestyle#filter_page"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

